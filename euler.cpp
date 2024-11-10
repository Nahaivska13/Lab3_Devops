#include "euler.h"
#include <cmath>
#include <iostream>

// Реалізація ряду для sec(x)
double Euler::secSeries(int n, double x) {
    double sum = 0.0;

    // Обчислення ряду до n-го елемента
    for (int i = 0; i <= n; ++i) {
        double term = (std::pow(-1, i) * eulerNumber(i)) / factorial(2 * i); // Формула для члена ряду
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
    // Визначені значення чисел Ейлера E_2n для перших n
    static const double eulerNumbers[] = {
        1, -1, 5, -61, 1385  // E_0, E_2, E_4, E_6, E_8
    };
    
    if (n < 5) {
        return eulerNumbers[n];  // Повертаємо значення для n < 5
    } else {
        std::cerr << "Euler number for n=" << n << " is not defined." << std::endl;
        return 0; // Для більшого n можна додати додаткові значення
    }
}

