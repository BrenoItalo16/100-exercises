//019 - A teacher wants to draw one of his n students to erase the board. Make
//      a program that helps him by reading their names and writing the name of
//      the chosen one.

import 'dart:io';
import 'dart:math';

void main() {
  print("Type the first name:");
  String nameOne = stdin.readLineSync()!;
  print("Type the second name:");
  String nameTwo = stdin.readLineSync()!;
  print("Type the third name:");
  String nameThree = stdin.readLineSync()!;
  print("Type the fourth name:");
  String nameFour = stdin.readLineSync()!;

  List<String> names = [nameOne, nameTwo, nameThree, nameFour];
  int randomInt = Random().nextInt(names.length);
  String chosenName = names[randomInt];
  print('The chosen one was $chosenName.');
}
