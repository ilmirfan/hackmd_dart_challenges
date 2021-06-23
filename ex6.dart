/**
 * Ask the user for a string and print out whether this string is a palindrome or not.

    A palindrome is a string that reads the same forwards and backwards.

 */
import 'dart:io';

main(List<String> args) {
  stdout.write('Enter your word: ');
  String? word = stdin.readLineSync();

  //print(word.length);

  String palindrom = '';

  if (word != null) {
    for (int i = word.length - 1; i >= 0; i--) {
      // print(word[i]);

      palindrom = palindrom + word[i];
    }
  }

//  print(palindrom);

  if (word == palindrom) {
    print('the word $word is a palindrom');
  } else {
    print('the word $word is not a palindrom');
  }
}
