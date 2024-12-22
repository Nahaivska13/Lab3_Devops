#!/bin/bash

URL="http://127.0.0.1/compute"

# Функція для відправки HTTP-запиту
send_request() {
    # Надсилаємо запит і вимірюємо час відповіді
    start=$(date +%s%3N)
    curl -s $URL > /dev/null
    end=$(date +%s%3N)

    # Обчислюємо час відповіді
    response_time=$((end - start))
    echo "Response time: ${response_time} ms"
}

# Нескінченний цикл
while true; do
    # Випадковий час сну між 5 і 10 секундами
    sleep_interval=$((RANDOM % 6 + 5))

    # Виводимо інформацію про час сну
    echo "Sleeping for ${sleep_interval} seconds..."

    # Чекаємо випадковий час
    sleep $sleep_interval

    # Викликаємо функцію для відправки запиту
    send_request
done

