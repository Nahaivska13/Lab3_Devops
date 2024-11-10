#include <iostream>
#include "euler.h"

int main() {
    Euler euler; // Створюємо об'єкт класу
    int n = 5;   // Кількість елементів ряду
    double x;

    // Запитуємо у користувача значення x
    std::cout << "Enter x (|x| < π/2): ";
    std::cin >> x;

    // Обчислюємо sec(x) за допомогою ряду і виводимо результат
    std::cout << "sec(" << x << ") result: " << euler.secSeries(n, x) << std::endl;

    return 0;
}

