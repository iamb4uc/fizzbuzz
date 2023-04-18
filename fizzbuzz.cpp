#include <iostream>

int main() {
    std::ios_base::sync_with_stdio(false); /* Makes input/output faster ig */

    for (int i = 1; i <= 100; ++i) {
        bool is_divisible_by_3 = (i % 3 == 0);
        bool is_divisible_by_5 = (i % 5 == 0);

        (is_divisible_by_3 && is_divisible_by_5) ? std::cout << "FizzBuzz\n" :
        (is_divisible_by_3) ? std::cout << "Fizz\n" :
        (is_divisible_by_5) ? std::cout << "Buzz\n" :
        std::cout << i << "\n";
    }
    return 0;
}

