function decimalToBinary(decimalNumber)
  lengthOfBinary = 0
  while decimalNumber >= (2 ^ lengthOfBinary) do
    lengthOfBinary = lengthOfBinary + 1
  end

  while lengthOfBinary >= 0 do
    if (2 ^ lengthOfBinary) > decimalNumber then
        io.write("0")
    else
      decimalNumber = decimalNumber - (2 ^ lengthOfBinary)
      io.write("1")
    end
    lengthOfBinary = lengthOfBinary - 1
  end
end

io.write("Input the number you wanna convert into a binary number: ")
decimalNumber = io.read("*number")
decimalToBinary(decimalNumber)
