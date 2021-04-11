use strict; 
use warnings; 


print "Input the number you wanna convert into a binary number: ";
my $decimalNumber = <STDIN>;

decimalToBinary($decimalNumber);
    
sub decimalToBinary
{

    my $lengthOfBinary = 0;
    while ($decimalNumber >= 2 ** $lengthOfBinary) {
        $lengthOfBinary += 1;
    }

    while ($lengthOfBinary >= 0) {
        if ((2 ** $lengthOfBinary) > $decimalNumber) {
            print "0";
        } else {
            $decimalNumber -= (2 ** $lengthOfBinary);
            print "1";
        }
        $lengthOfBinary --;
    }
}
