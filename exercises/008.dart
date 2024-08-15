//008 - Write a program that reads a value in meters and writes it converted to centimeters and kilometers.

import 'dart:io';

void main() {
  print('Type a distance in meters.');
  num meters = num.parse(stdin.readLineSync()!);
  print('The measurement of ${meters}m corresponds to:');
  print('${meters / 1000}km');
  print('${meters / 100}hm');
  print('${meters / 10}dam');
  print('${meters * 10}dm');
  print('${meters * 100}cm');
  print('${meters * 1000}mm');
}
