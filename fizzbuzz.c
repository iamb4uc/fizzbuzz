#include<stdio.h>

int main() {
  int i;
  for (i = 1; i <= 100; i++) {
    (i % 15 == 0) ? printf("FizzBuzz\n") :
    (i % 3 == 0) ? printf("Fizz\n") :
    (i % 5 == 0) ? printf("Buzz\n") :
    printf("%d\n", i);
  }
  return 0;
}

