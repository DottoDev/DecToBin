using System;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            int decimalNumber;

            Console.WriteLine("Input the number you wanna convert into a binary number: ");
            decimalNumber = int.Parse(Console.ReadLine());
            DecimalToBinary(decimalNumber);
        }

        public static void DecimalToBinary(int decimalNumber)
        {
            var lengthOfBinary = 0;
            while (decimalNumber >= Math.Pow(2, lengthOfBinary))
                lengthOfBinary++;

            for(var i = lengthOfBinary; i >= 0; i--)
            {
                if (Math.Pow(2, i) > decimalNumber)
                    Console.Write("0");
                else
                {
                    decimalNumber = decimalNumber - (int)Math.Pow(2, i);
                    Console.Write("1");
                }
            }
        }
    }
}
