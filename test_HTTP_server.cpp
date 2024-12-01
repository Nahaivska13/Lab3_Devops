#include <iostream>
#include <chrono>
#include <cassert>
#include <curl/curl.h>

// Допоміжна функція для обробки відповіді сервера
size_t WriteCallback(void* contents, size_t size, size_t nmemb, void* userp) {
    return size * nmemb; // Ігнорування вмісту відповіді, повертаємо розмір
}

// Функція для тестування часу відповіді сервера
void testServerResponseTime() {
    // Ініціалізація CURL
    CURL* curl = curl_easy_init();
    if (!curl) {
        std::cerr << "Не вдалося ініціалізувати CURL" << std::endl;
        return;
    }

    // Налаштування запиту
    std::string url = "http://localhost:8081/compute"; // Змінити на потрібний сервер
    curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);

    // Вимірювання часу відповіді
    auto start = std::chrono::high_resolution_clock::now();
    CURLcode res = curl_easy_perform(curl);
    auto end = std::chrono::high_resolution_clock::now();

    // Завершення роботи CURL
    curl_easy_cleanup(curl);

    if (res != CURLE_OK) {
        std::cerr << "Помилка CURL: " << curl_easy_strerror(res) << std::endl;
        return;
    }

    // Обчислення часу відповіді у мілісекундах
    long elapsed_time = std::chrono::duration_cast<std::chrono::milliseconds>(end - start).count();

    // Перевірка часу відповіді
    std::cout << "Час відповіді: " << elapsed_time << " мс" << std::endl;
    assert(elapsed_time >= 5000 && elapsed_time <= 20000);

    std::cout << "Тест пройдено успішно!" << std::endl;
}

int main() {
    testServerResponseTime();
    return 0;
}


