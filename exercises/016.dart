//016 - Create a program that reads any Real number from the keyboard and
//      displays its integer portion on the screen.

import 'dart:io';

void main() {
  print('Type a number');
  double number = double.parse(stdin.readLineSync()!);
  print(
      'The integer part of the number $number is ${number.toStringAsFixed(0)}.');
}
