#include <cassert>
#include <cmath>
#include <iostream>
#include "euler.h"  // Включення вашого класу Euler

// Тест для функції secSeries
void testSecSeries() {
    Euler euler;
    int n = 5;  // Кількість елементів ряду для апроксимації
    double x = 0.5;  // Тестове значення x (|x| < π/2)

    // Виклик функції для обчислення sec(x)
    double result = euler.secSeries(n, x);
    std::cout << "Result: " << result << std::endl;

    // Очікуване значення для sec(0.5), розраховане вручну або за допомогою калькулятора
    double expected = 1.139493;  // Це значення можна перевірити на калькуляторі чи через інші методи

    // Точність для порівняння
    double epsilon = 1e-6;

    // Перевірка результату: якщо різниця між результатом і очікуваним значенням менша за epsilon, тест пройшов
    assert(fabs(result - expected) < epsilon);
}

// Головна функція для запуску тесту
int main() {
    testSecSeries();  // Викликаємо тестову функцію
    std::cout << "Test passed!" << std::endl;
    return 0;
}

