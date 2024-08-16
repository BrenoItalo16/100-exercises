//020 - The same teacher from the previous exercise wants to randomly draw the
//      presentation order of the students' assignments. Write a program that
//      reads the names of the four students and displays the sorted order.

import 'dart:io';

void main() {
  print("Type the first name:");
  String firstName = stdin.readLineSync()!;
  print("Type the second name:");
  String secondName = stdin.readLineSync()!;
  print("Type the third name:");
  String thirdName = stdin.readLineSync()!;
  print("Type the fourth name:");
  String fourthName = stdin.readLineSync()!;

  List<String> names = [firstName, secondName, thirdName, fourthName];
  names.shuffle();
  print('The presentation order is: ${names.join(', ')}.');
}
