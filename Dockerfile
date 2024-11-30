FROM ubuntu:22.04
RUN apt-get update && apt-get install -y libc6 libstdc++6
RUN ldd --version
WORKDIR /home/app
COPY ./server .
RUN chmod +x ./server
ENTRYPOINT ["./server"]

