// 018 - Create a program that reads any angle and displays the sine,
//       cosine and tangent values of that angle on the screen.

import 'dart:io';
import 'dart:math';

void main() {
  print('What is the angle?');
  double angle = double.parse(stdin.readLineSync()!);
  double sine = sin(angle * pi / 180);
  double cosine = cos(angle * pi / 180);
  double tangent = tan(angle * pi / 180);
  print('The sine of $angle is $sine');
  print('The cosine of $angle is $cosine');
  print('The tangent of $angle is $tangent');
}