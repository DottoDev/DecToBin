package main

import (
	"fmt"
	"math"
)

func decimalToBinary(decimalNumber float64) {
	var lengthOfBinary float64 = 0
	for decimalNumber >= math.Pow(2, lengthOfBinary) {
		lengthOfBinary++
	}

	for lengthOfBinary >= 0 {
		if math.Pow(2, lengthOfBinary) > decimalNumber {
			fmt.Printf("0")
		} else {
			decimalNumber = decimalNumber - math.Pow(2, lengthOfBinary)
			fmt.Printf("1")
		}
		lengthOfBinary--
	}
}

func main() {
	var decimalNumber float64
	fmt.Printf("Input the number you wanna convert into a binary number: ")
	fmt.Scan(&decimalNumber)

	decimalToBinary(decimalNumber)

}
