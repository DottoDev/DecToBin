#include <math.h>
#include <stdio.h>

void decimalToBinary(int decimalNumber) {
  int lengthOfBinary = 0;
  while (decimalNumber >= pow(2, lengthOfBinary)) {
    lengthOfBinary++;
  }

  for (int i = lengthOfBinary; i >= 0; --i) {
    if (pow(2, i) > decimalNumber) {
      printf("0");
    } else {
      decimalNumber = decimalNumber - pow(2, i);
      printf("1");
    }
  }
}

int main() {
  int decimalNumber;

  printf("Input the number you wanna convert into a binary number: ");
  scanf("%d", &decimalNumber);
  decimalToBinary(decimalNumber);
}
