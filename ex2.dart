import 'dart:io';

main(List<String> args) {
  stdout.write('Enter a number');
  String? number = stdin.readLineSync();
  if (number != null) {
    int? checkNumber = int.parse(number);
    if (checkNumber % 2 == 0) {
      print('$number is an even number');
    } else {
      print('$number is an odd number');
    }
  }
}
