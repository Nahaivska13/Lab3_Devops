#ifndef EULER_H
#define EULER_H

class Euler {
public:
    double secSeries(int n, double x); // Функція для обчислення ряду sec(x)
private:
    double factorial(int k);           // Функція для обчислення факторіалу
    double eulerNumber(int n);          // Функція для обчислення числа Ейлера E_2n
};

#endif

