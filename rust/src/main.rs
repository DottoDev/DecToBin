use std::convert::TryInto;
use std::io;

fn decimal_to_binary(mut decimal_number: i32) {
    let mut length_of_binary: i32 = 0;
    while decimal_number >= i32::pow(2, length_of_binary.try_into().unwrap()) {
        length_of_binary += 1;
    }

    while length_of_binary >= 0 {
        if i32::pow(2, length_of_binary.try_into().unwrap()) > decimal_number {
            print!("0")
        } else {
            decimal_number = decimal_number - i32::pow(2, length_of_binary.try_into().unwrap());
            print!("1")
        }
        length_of_binary -= 1;
    }
}

fn main() {
    print!("Input the number youwanna convert into a binary number: ");
    let mut decimal_number = String::new();
    io::stdin()
        .read_line(&mut decimal_number)
        .expect("failed to read input.");
    let decimal_number: i32 = decimal_number.trim().parse().expect("invalid input");
    decimal_to_binary(decimal_number)
}
