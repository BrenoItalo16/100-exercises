//003 - Create a program that reads two numbers and prints the sum between them
// Type the first number
// Type the second number
// The sum between [num1] and [num2] is [sum].

import 'dart:io';

void main() {
  print("Type the first number");
  int? num1 = int.parse(stdin.readLineSync()!);
  print("Type the second number");
  int? num2 = int.parse(stdin.readLineSync()!);
  int? sum = num1 + num2;
  print("The sum between $num1 and $num2 is $sum.");
}
