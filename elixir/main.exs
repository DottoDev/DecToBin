defmodule Binary do
  def decimalToBinary(decimalNumber) do
    n = 0
    getLengthOfBinary(decimalNumber, n)
  end

  def getLengthOfBinary(decimalNumber, n) do
    if decimalNumber < :math.pow(2, n) do
      printBinary(decimalNumber, n)
    else
      getLengthOfBinary(decimalNumber, n + 1)
    end
  end

  def printBinary(decimalNumber, lengthOfBinary) do
    if lengthOfBinary < 0 do
    else
      if :math.pow(2, lengthOfBinary) > decimalNumber do
        IO.write("0")
        printBinary(decimalNumber, lengthOfBinary - 1)
      else
        IO.write("1")
        printBinary(decimalNumber - :math.pow(2, lengthOfBinary), lengthOfBinary - 1)
      end
    end
  end
end

decimalNumber =
  IO.gets("Input the number you wanna convert into a binary number : ") |> String.trim_trailing()

decimalNumber = String.to_integer(decimalNumber)

Binary.decimalToBinary(decimalNumber)
