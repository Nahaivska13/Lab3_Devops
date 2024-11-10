#include <cassert>
#include <cmath>
#include <iostream>
#include "euler.h"

// Тест для функції secSeries з легшим значенням
void testSecSeries() {
    Euler euler;
    int n = 1;       
    double x = 0.0;  // Значення x, для якого sec(x) = 1

    // Виклик функції для обчислення sec(0)
    double result = euler.secSeries(n, x);
    std::cout << "Result: " << result << std::endl;

    // Очікуване значення для sec(0)
    double expected = 1.0;

    // Точність для порівняння
    double epsilon = 1e-4;

    // Перевірка результату
    assert(fabs(result - expected) < epsilon);
}

// Головна функція для запуску тесту
int main() {
    testSecSeries(); // Виклик тестової функції
    std::cout << "Test passed!" << std::endl;
    return 0;
}

