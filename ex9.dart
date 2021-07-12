import 'dart:io';
import 'dart:math';

/**Generate a random number between 1 and 100. Ask the user to guess the number, then tell them whether they guessed too low, too high, or exactly right.

    Keep track of how many guesses the user has taken, and when the game ends, print this out.
 */

main(List<String> args) {
  final randomNumber = Random();
  int rounds = 0;
  int correctGuess = 0;
  int lowGuess = 0;
  int highGuess = 0;

  final int systemNumber = randomNumber.nextInt(100);
  // print(randomNumber.nextInt(100));
  while (true) {
    rounds++;
    stdout.write('Enter your number: ');

    String userInput = stdin
        .readLineSync()!; //ignoring null check. Need String to exit the program
    if (userInput == 'q') {
      print(
          'Rounds: ${rounds - 1}\nCorrect Guesses: $correctGuess\nLow Guesses: $lowGuess\nHigh Guesses: $highGuess');
      break;
    } else {
      int userNumber = int.parse(userInput); //parsing integer

      if (systemNumber == userNumber) {
        print('System guess was $systemNumber');
        print('Your guess is exactly right');
        correctGuess++;
      } else if (systemNumber > userNumber) {
        print('System guess was $systemNumber');
        print('Your guess is too low');
        lowGuess++;
      } else {
        print('System guess was $systemNumber');
        print('Your guess is too high');
        highGuess++;
      }
    }
  }
}
