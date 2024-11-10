#include "euler.h"
#include <cmath>
#include <iostream>

// Реалізація ряду для sec(x)
double Euler::secSeries(int n, double x) {
    double sum = 0.0;

    // Обчислення ряду до n-го елемента
    for (int i = 0; i <= n; ++i) {
        double term = (std::pow(-1, i) * eulerNumber(2 * i)) / factorial(2 * i); // Формула для члена ряду
        sum += term * std::pow(x, 2 * i); // Додаємо до суми поточний член
    }

    return sum;
}

// Допоміжна функція для обчислення факторіалу
double Euler::factorial(int k) {
    double result = 1.0;
    for (int i = 2; i <= k; ++i) {
        result *= i; // Обчислюємо факторіал за допомогою циклу
    }
    return result;
}

// Функція для повернення чисел Ейлера E_2n
double Euler::eulerNumber(int n) {
    // Визначені значення чисел Ейлера E_2n для перших кількох значень
    static const double eulerNumbers[] = {
        1, -1, 5, -61, 1385, -50521 // E_0, E_2, E_4, E_6, E_8, E_10
    };

    int index = n / 2;
    if (index < 6 && n % 2 == 0) {
        return eulerNumbers[index]; // Повертаємо значення для парних n
    } else {
        std::cerr << "Euler number for n=" << n << " is not defined." << std::endl;
        return 0;
    }
}


