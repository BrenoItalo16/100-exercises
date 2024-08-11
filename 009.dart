//009 - Create a multiplication table that reads any integer and displays its
//     multiplication table from 1 to 10 on the screen.

import 'dart:io';

void main() {
  print('Type any integer number.');
  int number = int.parse(stdin.readLineSync()!);
  print('You have typed the integer: $number.');

  for (var i = 1; i <= 10; i++) {
    print('$number x $i = ${number * i}');
  }
}
