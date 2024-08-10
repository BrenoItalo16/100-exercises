//006 - Create an algorithm that reads a number and displays its double, triple and square root.

import 'dart:io';
import 'dart:math';

void main() {
  print('Type a number.');
  num number = num.parse(stdin.readLineSync()!);
  print('You have typed the number: $number.');
  print('Twice $number is ${number * 2}.');
  print('The triple of $number is ${number * 3}');
  print('The square root of $number is ${sqrt(number)}');
}
