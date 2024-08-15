//013 - Create an algorithm that reads an employee's salary and shows their
//      new salary with a 15% increase.

import 'dart:io';

void main() {
  print("What is the employees's salary?");
  double salary = double.parse(stdin.readLineSync()!);
  print("The employee's salary was ${salary}");
  print("The new employee's salary increased by 15% is ${salary * 1.15}");
}
