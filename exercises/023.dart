/*023 - Write a program that reads any integer number from 0 to 9999 and displays
  each of the digits separated by unit, ten, hundred, and thousand.
*/

import 'dart:io';

void main() {
  print('Enter an integer between 0 and 9999');
  String? number = stdin.readLineSync();
  if (number!.length == 1) {
    print("Unit: ${number[0]}");
  } else if (number.length == 2) {
    print("Ten: ${number[0]}");
    print("Unit: ${number[1]}");
  } else if (number.length == 3) {
    print("Hundred: ${number[0]}");
    print("Ten: ${number[1]}");
    print("Unit: ${number[2]}");
  } else if (number.length == 4) {
    print("Thousand: ${number[0]}");
    print("Hundred: ${number[1]}");
    print("Ten: ${number[2]}");
    print("Unit: ${number[3]}");
  } else {
    print("Invalid number!");
  }
}
