import 'dart:io';

main(List<String> args) {
  print('Enter your name');
  final name = stdin.readLineSync();
  print('Enter your age');
  String? age = stdin.readLineSync();
  int? intAge;
  int? remainingYear;
  if (age != null) {
    intAge = int.parse(age);
    remainingYear = 100 - intAge;
  }
  print('Hi $name, you have $remainingYear years to reach 100');
}
