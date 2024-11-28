FROM debian:bookworm
RUN apt-get update && apt-get install -y libc6 libstdc++6
WORKDIR /home/app
COPY ./program .
RUN chmod +x ./program
ENTRYPOINT ["./program"]

