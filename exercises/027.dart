/*027 - Write a program that reads a person's full name and shows the first and last name separately.*/

import 'dart:io';

void main() {
  print('Enter your full name');
  String? fullName = stdin.readLineSync();
  List<String> names = fullName!.split(' ');
  print(
      'Your first name is ${names[0]} and your last name is ${names[names.length - 1]}');
}
