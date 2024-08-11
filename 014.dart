//014 - Write a program that converts a temperature entered in °C to °F. F = C * (9.0/5.0) + 32.

import 'dart:io';

void main() {
  print('Report the temperature in °C:');
  double cel = double.parse(stdin.readLineSync()!);
  double far = cel * (9.0 / 5.0) + 32;
  print('The temperature reportes in °C is $cel.');
  print('The same temperature in °F is $far.');
}
