def decimalToBinary(decimalNumber):
    lengthOfBinary = 0
    while decimalNumber >= pow(2, lengthOfBinary):
        lengthOfBinary += 1

    while lengthOfBinary >= 0:
        if pow(2, lengthOfBinary) > decimalNumber:
            print("0", end="")
        else:
            decimalNumber = decimalNumber - pow(2, lengthOfBinary)
            print("1", end="")
        lengthOfBinary -= 1


if __name__ == "__main__":
    decimalNumber = int(
        input("Input the number you wanna convert into a binary number: ")
    )
    decimalToBinary(decimalNumber)
