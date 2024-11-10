#include <cassert>
#include <cmath>
#include <iostream>
#include "euler.h"

void testSecSeries() {
    Euler euler;
    int n = 5;
    double x = 0.5;
    double result = euler.secSeries(n, x);
    std::cout << "Result: " << result << std::endl;
    double expected = 1.139493;
    double epsilon = 1e-4;
    assert(fabs(result - expected) < epsilon);
}

int main() {
    testSecSeries();
    std::cout << "Test passed!" << std::endl;
    return 0;
}

