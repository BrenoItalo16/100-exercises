//007 - Create a program that reads a student's two grades, calculates and displays their average.

import 'dart:io';

void main() {
  print("What's the student's first grade?");
  double grade01 = double.parse(stdin.readLineSync()!);
  print("What's the student's second grade?");
  double grade02 = double.parse(stdin.readLineSync()!);
  double average = (grade01 + grade02) / 2;
  print("The student's average grade is $average.");
}
