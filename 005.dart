//005 - Create a program that reads an integer and displays its successor and predecessor on the screen.

import 'dart:io';

void main() {
  print('Type an Integer number.');
  int? number = int.parse(stdin.readLineSync()!);
  print('You have typed the Integer: ${number}.');
  print('Its predecessor is: ${number - 1} and');
  print('Its successor is: ${number + 1}.');
}
