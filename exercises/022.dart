//022 - Create a program that reads a person's full name and shows:
//    - The name in all uppercase and lowercase letters.
//    - The total number of letters, excluding spaces.
//    - The number of letters in the first name.

import 'dart:io';

void main() {
  print('Type the full name\n==================');
  String? fullName = stdin.readLineSync();
  String? noSpacesName = fullName!.replaceAll(' ', '');
  List<String>? firstName = fullName.split(' ');
  print('You have typed: $fullName.');
  print('Uppercase: ${fullName.toUpperCase()}.');
  print('Lowercase: ${fullName.toLowerCase()}.');
  print('This name has ${noSpacesName.length}.');
  print('The first name has ${firstName[0].length}.');
}
