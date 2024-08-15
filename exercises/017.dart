//017 -  Write a program that reads the length of the opposite and adjacent
//       sides of a right triangle. Calculate and display the length of the hypotenuse.

import 'dart:io';

void main(){
    print('What is the legth of the opposite side?');
    double opposite = double.parse(stdin.readLineSync()!);
    print('What is the length of the adjacent side?');
    double adjacent = double.parse(stdin.readLineSync()!);
    double hypotenuse = (opposite * opposite) + (adjacent * adjacent);
    print('The hypotenuse is $hypotenuse');
}