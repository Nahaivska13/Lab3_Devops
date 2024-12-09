FROM ubuntu:22.04
RUN apt-get update && apt-get install -y libc6 libstdc++6
RUN ldd --version
WORKDIR /home/app
RUN git clone https://github.com/Nahaivska13/Lab3_Devops.git .
RUN git checkout branchHTTPserverMulti
RUN autoreconf -i && ./configure
RUN make 
RUN g++ -o server HTTP_server.cpp HTTP_server.h euler.cpp -lpthread
 
FROM alpine:latest
RUN apk add --no-cache libstdc++ libc6-compat
COPY ./server .
EXPOSE 8081
RUN chmod +x ./server
ENTRYPOINT ["./server"]

