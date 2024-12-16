#!/bin/bash

# Функція для перевірки завантаження CPU конкретного контейнера
get_cpu_usage() {
    docker stats --no-stream --format "{{.Name}} {{.CPUPerc}}" | grep "$1" | awk '{print $2}' | sed 's/%//'
}

# Функція для визначення процесорного ядра для контейнера
assign_cpu_core() {
    case $1 in
        srv1) echo "0" ;;
        srv2) echo "1" ;;
        srv3) echo "2" ;;
        *) echo "0" ;;
    esac
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

# Функція для оновлення контейнерів
upgrade_containers() {
    image_check=$(docker pull skhtskiryna/my-http-server | grep "Downloaded newer image")
    if [ -n "$image_check" ]; then
        echo "$(date '+%Y-%m-%d %H:%M:%S'): New image found, upgrading containers..."
        containers=("srv1" "srv2" "srv3")
        for container in "${containers[@]}"; do
            if docker ps --format "{{.Names}}" | grep -q "^$container$"; then
                new_container="${container}_temp"
                
                # Запуск нового контейнера
                launch_container "$new_container" "$(assign_cpu_core "$container")"
                
                # Остановка та видалення старого контейнера
                docker stop "$container" && docker rm "$container"
                
                # Перейменування нового контейнера
                docker rename "$new_container" "$container"
                echo "$container has been upgraded."
            fi
        done
    else
        echo "$(date '+%Y-%m-%d %H:%M:%S'): No new image available."
    fi
}

# Функція для моніторингу та управління контейнерами
manage_containers() {
    while true; do
        # Перевірка та запуск контейнера srv1
        if docker ps --format "{{.Names}}" | grep -q "srv1"; then
            cpu_srv1=$(get_cpu_usage "srv1")
            if (( $(echo "$cpu_srv1 > 45.0" | bc -l) )); then
                echo "$(date '+%Y-%m-%d %H:%M:%S'): srv1 is under load. Starting srv2..."
                if ! docker ps --format "{{.Names}}" | grep -q "srv2"; then
                    launch_container "srv2" 1
                fi
            fi
        else
            launch_container "srv1" 0
        fi

        # Перевірка та запуск контейнера srv2
        if docker ps --format "{{.Names}}" | grep -q "srv2"; then
            cpu_srv2=$(get_cpu_usage "srv2")
            if (( $(echo "$cpu_srv2 > 30.0" | bc -l) )); then
                echo "$(date '+%Y-%m-%d %H:%M:%S'): srv2 is under load. Starting srv3..."
                if ! docker ps --format "{{.Names}}" | grep -q "srv3"; then
                    launch_container "srv3" 2
                fi
            fi
        fi

        # Зупинка невикористовуваних контейнерів
        for container in srv3 srv2; do
            if docker ps --format "{{.Names}}" | grep -q "$container"; then
                cpu=$(get_cpu_usage "$container")
                if (( $(echo "$cpu < 5.0" | bc -l) )); then
                    echo "$(date '+%Y-%m-%d %H:%M:%S'): $container is idle. Stopping it..."
                    docker stop "$container" && docker rm "$container"
                fi
            fi
        done

        # Оновлення контейнерів
        upgrade_containers
        sleep 120
    done
}

manage_containers

