//002 - Create a program that reads a person's name and displays a welcome message on the screen
// What is your name?
// Hello, [name]! Welcome to the Dart side :)

import 'dart:io';

void main() {
  print("What is your name?");
  String? name = stdin.readLineSync();
  print("Hello, $name! Welcome to the Dart side :).");
}
