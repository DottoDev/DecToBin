#include <cmath>
#include <iostream>

void decimalToBinary(int decimalNumber) {
  int lengthOfBinary = 0;
  while (decimalNumber >= pow(2, lengthOfBinary)) {
    lengthOfBinary++;
  }

  for (int i = lengthOfBinary; i >= 0; --i) {
    if (pow(2, i) > decimalNumber) {
      std::cout << "0";
    } else {
      decimalNumber = decimalNumber - pow(2, i);
      std::cout << "1";
    }
  }
}

int main() {
  int decimalNumber;
  std::cout << "Input the number you wanna convert into a binary number: ";
  std::cin >> decimalNumber;
  std::cout << std::endl;

  decimalToBinary(decimalNumber);
}
