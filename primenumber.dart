import 'dart:io';

/**Ask the user for a number and determine whether the number is prime or not.

    Do it using a function
 */

main(List<String> args) {
  stdout.write("Enter your number: ");
  final int userNumber = int.parse(stdin.readLineSync()!);
  primeFinder(userNumber);
}

void primeFinder(int userNumber) {
  bool isPrime = true;

  if (userNumber == 1) {
    print('Enter a number bigger than 1');
  } else {
    for (int i = 2; i < userNumber; i++) {
      if (userNumber % i == 0) {
        isPrime = false;
      }
    }

    if (isPrime == true) {
      print('$userNumber is a prime number');
    } else {
      print('$userNumber is not a prime number');
    }
  }
}
