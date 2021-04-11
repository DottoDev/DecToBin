def decimalToBinary(decimalNumber)
  lengthOfBinary = 0
  while (decimalNumber >= 2 ** lengthOfBinary)
    lengthOfBinary += 1
  end

  while (lengthOfBinary >= 0)
    if ((2 ** lengthOfBinary) > decimalNumber)
      print "0"
    else
      decimalNumber -= 2 ** lengthOfBinary
      print "1"
    end
    lengthOfBinary -= 1
  end
end

print "Input the number you wanna convert into a binary number: "
decimalNumber = $stdin.readline.to_i
decimalToBinary(decimalNumber)

