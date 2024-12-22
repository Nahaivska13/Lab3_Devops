#!/bin/bash

URL="http://127.0.0.1/compute"

send_request() {
    start=$(date +%s%3N)
    curl -s $URL > /dev/null
    end=$(date +%s%3N)
    response_time=$((end - start))
    echo "Response time: ${response_time} ms"
}

while true; do
    sleep_interval=$((RANDOM % 4 + 2))
    echo "Sleeping for ${sleep_interval} seconds..."
    sleep $sleep_interval
    send_request &
    if [[ $(jobs -r | wc -l) -ge 10 ]]; then
        wait -n
    fi
done

