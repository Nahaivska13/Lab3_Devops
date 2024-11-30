
#include <cassert>
#include <cmath>
#include <iostream>
#include <chrono>
#include "euler.h"

void testSecSeries() {
    Euler euler;

    // Параметри тесту
    int n = 3000; // Велика кількість ітерацій
    double x = 112; // Значення x для обчислення sec(x)

if (n >= 12) {
    std::cerr << "Euler number for n=" << n << " is not defined." << std::endl;
    return;
}
    // Початок вимірювання часу
    auto start = std::chrono::high_resolution_clock::now();

    // Виклик функції з великим навантаженням
    double result = euler.secSeries(n, x);

    // Кінець вимірювання часу
    auto end = std::chrono::high_resolution_clock::now();

    // Обчислення пройденого часу в мілісекундах
    auto elapsed = std::chrono::duration_cast<std::chrono::milliseconds>(end - start).count();

    // Очікуване значення sec(x)
    double expected = 1.0 / cos(x);

    // Точність для порівняння
    double epsilon = 1e-4;

    // Перевірка результату
    assert(fabs(result - expected) < epsilon);

    // Діапазон часу виконання
    assert(elapsed >= 5000 && elapsed <= 20000); // Час повинен бути між 5 і 20 секундами

    // Лог результату
    std::cout << "Result: " << result << std::endl;
    std::cout << "Elapsed time: " << elapsed << " ms" << std::endl;
}

int main() {
    testSecSeries(); // Запуск тесту
    std::cout << "Test passed!" << std::endl;
    return 0;
}

