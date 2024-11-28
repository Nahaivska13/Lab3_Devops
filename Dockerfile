FROM ubuntu:20.04
RUN apt-get update && apt-get install -y \
    build-essential \
    libc6-dev \
    libstdc++6
WORKDIR /home/app
COPY COPY program .
RUN chmod +x ./program
ENTRYPOINT ["./program"]
