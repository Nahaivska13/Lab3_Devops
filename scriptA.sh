#!/bin/bash

# Функція для перевірки завантаження CPU конкретного контейнера
get_cpu_usage() {
    usage=$(docker stats --no-stream --format "{{.Name}} {{.CPUPerc}}" | grep "$1" | awk '{print $2}' | sed 's/%//')
    echo "${usage:-0}" # Повернути 0, якщо значення пусте
}

# Функція для запуску контейнера на заданому процесорному ядрі
launch_container() {
    if docker ps --format "{{.Names}}" | grep -q "^$1$"; then
        echo "$(date '+%Y-%m-%d %H:%M:%S'): Container $1 is already running. Restarting..."
        docker rm -f "$1"
    fi
    echo "$(date '+%Y-%m-%d %H:%M:%S'): Starting $1 on CPU core #$2"
    docker run --name "$1" --cpuset-cpus="$2" --network bridge -d dnahaivska13/darynanahaivska
}

# Моніторинг контейнерів
monitor_containers() {
    declare -A last_active
    containers=("srv1" "srv2" "srv3")
    cpu_limits=(45.0 30.0 20.0) # Ліміти CPU для кожного контейнера

    while true; do
        for i in "${!containers[@]}"; do
            container="${containers[$i]}"
            cpu_limit="${cpu_limits[$i]}"

            if docker ps --format "{{.Names}}" | grep -q "$container"; then
                # Перевірка завантаження CPU
                cpu_usage=$(get_cpu_usage "$container")
                echo "$(date '+%Y-%m-%d %H:%M:%S'): $container CPU usage: $cpu_usage%"

                # Оновлення часу активності
                if (( $(echo "$cpu_usage > $cpu_limit" | bc -l) )); then
                    last_active["$container"]=$(date +%s)
                fi

                # Зупинка, якщо контейнер неактивний понад 2 хвилини
                if (( $(date +%s) - ${last_active["$container"]:-0} > 120 )); then
                    echo "$(date '+%Y-%m-%d %H:%M:%S'): $container is idle for 2 minutes. Stopping..."
                    docker stop "$container" && docker rm "$container"
                fi
            else
                # Запуск контейнера, якщо він не працює
                launch_container "$container" "$i"
                last_active["$container"]=$(date +%s)
            fi

            # Переключення на наступний контейнер
            if (( i < ${#containers[@]} - 1 )); then
                next_container="${containers[$((i + 1))]}"
                if (( $(echo "$cpu_usage > $cpu_limit" | bc -l) )); then
                    echo "$(date '+%Y-%m-%d %H:%M:%S'): $container is under load. Starting $next_container..."
                    launch_container "$next_container" "$((i + 1))"
                fi
            fi
        done

        sleep 10
    done
}

# Оновлення контейнерів
upgrade_containers() {
    image_check=$(docker pull dnahaivska13/darynanahaivska | grep "Downloaded newer image")
    if [ -n "$image_check" ]; then
        echo "$(date '+%Y-%m-%d %H:%M:%S'): New image found, upgrading containers..."
        containers=("srv1" "srv2" "srv3")
        for container in "${containers[@]}"; do
            if docker ps --format "{{.Names}}" | grep -q "^$container$"; then
                temp_container="${container}_temp"
                launch_container "$temp_container" "$(assign_cpu_core "$container")"
                docker stop "$container" && docker rm "$container"
                docker rename "$temp_container" "$container"
                echo "$(date '+%Y-%m-%d %H:%M:%S'): $container has been upgraded."
            fi
        done
    else
        echo "$(date '+%Y-%m-%d %H:%M:%S'): No new image available."
    fi
}

# Головний цикл
manage_containers() {
    while true; do
        monitor_containers
        upgrade_containers
        sleep 120
    done
}

manage_containers

