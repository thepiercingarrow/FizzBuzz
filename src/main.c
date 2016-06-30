#include <stdio.h>

#define DIV3(i) (!(i%3))
#define DIV5(i) (!(i%5))

int main() {
  int i;
  for (i = 1; i <= 100; ++i)
    if (i % 3 && i % 5)
      printf("%d\n", i);
    else
      printf("%s\n", DIV3(i) ? (DIV5(i) ? "FizzBuzz" : "Fizz") : "Buzz");
  return 0;
}
