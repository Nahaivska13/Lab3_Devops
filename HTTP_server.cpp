#include "HTTP_server.h"
#include "euler.h"  // Підключаємо euler.h для використання класу Euler
#include <stdio.h>
#include <sys/socket.h>
#include <unistd.h>
#include <stdlib.h>
#include <netinet/in.h>
#include <string.h>
#include <vector>
#include <chrono>
#include <algorithm>

#define PORT 8081

// HTTP headers
const char* HTTP_200HEADER = "HTTP/1.1 200 OK\r\n";
const char* HTTP_400HEADER = "HTTP/1.1 400 Bad Request\r\n";

int CreateHTTPserver() {
    int serverSocket, clientSocket;
    struct sockaddr_in address;
    int addrlen = sizeof(address);

    // Create the server socket
    if ((serverSocket = socket(AF_INET, SOCK_STREAM, 0)) == 0) {
        perror("Socket creation failed");
        exit(EXIT_FAILURE);
    }

    // Configure the server address
    address.sin_family = AF_INET;
    address.sin_addr.s_addr = INADDR_ANY;
    address.sin_port = htons(PORT);

    // Bind the socket to the address and port
    if (bind(serverSocket, (struct sockaddr*)&address, sizeof(address)) < 0 ||
        listen(serverSocket, 10) < 0) {
        perror("Binding or listening failed");
        close(serverSocket);
        exit(EXIT_FAILURE);
    }

    // Wait for incoming connections
    while (true) {
        printf("Waiting for connection...\n");

        // Accept incoming connections
        if ((clientSocket = accept(serverSocket, (struct sockaddr*)&address, (socklen_t*)&addrlen)) < 0) {
            perror("Accept failed");
            continue;
        }

        printf("Connection accepted.\n");

        // Fork a child process to handle the client
        if (fork() == 0) {
            close(serverSocket);
            handleClient(clientSocket);
            close(clientSocket);
            exit(0);
        }

        close(clientSocket);
    }

    close(serverSocket);
    return 0;
}

void handleClient(int clientSocket) {
    char buffer[30000] = {0};
    
    // Read the incoming request
    ssize_t bytesRead = read(clientSocket, buffer, sizeof(buffer));

    if (bytesRead <= 0) {
        printf("Failed to read client data. Bytes read: %zd\n", bytesRead);
        return;
    }

    printf("Received request: \n%s\n", buffer);

    // Parse the HTTP request
    char method[10] = {0}, path[200] = {0};
    sscanf(buffer, "%s %s", method, path);

    printf("Method: %s, Path: %s\n", method, path);

    // Handle only GET requests
    if (strcmp(method, "GET") == 0) {
        if (strcmp(path, "/compute") == 0) {
            printf("Handling /compute route...\n");
            handleCompute(clientSocket);
        } else {
            printf("Invalid path: %s\n", path);
            sendResponse(clientSocket, HTTP_400HEADER, "Invalid path");
        }
    } else {
        printf("Invalid method: %s\n", method);
        sendResponse(clientSocket, HTTP_400HEADER, "Invalid method");
    }

    // Ensure the socket is closed after handling the request
    close(clientSocket);
}

void handleCompute(int clientSocket) {
    // Створюємо об'єкт класу Euler
    Euler euler;

    // Start timing
    auto start = std::chrono::high_resolution_clock::now();

    // Виконуємо обчислення
    std::vector<double> values(100000);
    for (size_t i = 0; i < values.size(); ++i) {
        values[i] = euler.secSeries(5, i % 20 + 0.1); // Викликаємо метод для обчислення ряду sec(x)
    }

    for (int i = 0; i < 500; ++i) {  // Зменшили кількість сортувань для тестування
        std::sort(values.begin(), values.end()); // Сортуємо масив
    }

    auto elapsed = std::chrono::duration_cast<std::chrono::milliseconds>(
                       std::chrono::high_resolution_clock::now() - start)
                       .count(); // Обчислюємо час

    // Формуємо тіло відповіді
    char body[50];
    sprintf(body, "Elapsed time: %ld ms", elapsed);

    // Відправляємо відповідь клієнту
    sendResponse(clientSocket, HTTP_200HEADER, body);
}

void sendResponse(int clientSocket, const char* header, const char* body) {
    char response[500];

    // Обчислюємо довжину вмісту (довжина тіла)
    int contentLength = strlen(body);
    
    // Форматуємо заголовок відповіді
    sprintf(response, "%sContent-Length: %d\r\n\r\n%s", header, contentLength, body);
    
    // Логуємо всю відповідь перед відправкою
    printf("Sending response:\n%s\n", response);
    
    // Відправляємо відповідь через send()
    ssize_t bytesSent = send(clientSocket, response, strlen(response), 0);

    if (bytesSent == -1) {
        perror("Failed to send response");
    } else {
        printf("Response sent successfully, %ld bytes\n", bytesSent);
    }
}

