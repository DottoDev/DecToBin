function decimalToBinary(decimalNumber) {
  lengthOfBinary = 0;
  while (decimalNumber >= Math.pow(2, lengthOfBinary)) {
    lengthOfBinary += 1;
  }

  while (lengthOfBinary >= 0) {
    if (Math.pow(2, lengthOfBinary) > decimalNumber) {
      process.stdout.write("0");
    } else {
      decimalNumber = decimalNumber - Math.pow(2, lengthOfBinary);
      process.stdout.write("1");
    }
    lengthOfBinary--;
  }
}

const readline = require("readline").createInterface({
  input: process.stdin,
  output: process.stdout,
});

readline.question(
  "Input the number you wanna convert into a binary number: ",
  (decimalNumber) => {
    decimalToBinary(decimalNumber);
    readline.close();
  }
);
