#!/bin/bash

# Масив з іменами контейнерів
CONTAINERS=(srv1 srv2 srv3)
DOCKER_IMAGE="dnahaivska13/darynanahaivska"

while true; do
    echo "-----------------------------------------"
    echo "$(date): Checking for a newer image on the server..."
    echo "-----------------------------------------"

    # Перевірка наявності нового образу
    pullResult=$(docker pull $DOCKER_IMAGE | grep "Downloaded newer image")

    if [ -n "$pullResult" ]; then
        echo "[INFO] Newer image detected."

        for container in "${CONTAINERS[@]}"; do
            if docker ps | grep -q $container; then
                echo "[ACTION] Restarting '$container':"

                echo "  -> Sending SIGINT to '$container'..."
                docker kill --signal=SIGINT $container

                echo "  -> Waiting for '$container' to terminate..."
                docker wait $container
            else
                echo "[INFO] '$container' is not running. Starting it now..."
            fi

            echo "  -> Starting a new instance of '$container'..."
            docker run --name $container --rm -d $DOCKER_IMAGE

            echo "[SUCCESS] '$container' has been successfully restarted with the newer image."
        done
    else
        echo "[INFO] Image is already up-to-date."
    fi

    echo "-----------------------------------------"
    echo "[INFO] Sleeping for 10 seconds before the next check..."
    sleep 10
done

