//011 - Create a program that reads the height and width of a wall in meters,
//calculates its area, and determines the amount of paint needed to paint it,
//knowing that each liter of paint covers an area of 2 square meters.

import 'dart:io';

void main() {
  print('What is de height of the wall?');
  double height = double.parse(stdin.readLineSync()!);
  print('What is de width of the wall?');
  double width = double.parse(stdin.readLineSync()!);
  double area = width * height;
  print(
      'Your wall has dimensions of ${height}x${width} and its area is ${area}m².');
  print('To paint it, you will need ${area / 2}l of paint');
}
