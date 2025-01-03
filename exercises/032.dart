/*032 - Write a program that reads any year and shows if it is a "leap year".
     • A year is leap if it is divisible by 4.
     • But, if it is also divisible by 100, it is not leap unless it is divisible by 400.
*/

import 'dart:io';

void main() {
  print('Enter a year:');
  int year = int.parse(stdin.readLineSync()!);

  if (year % 400 == 0) {
    print('$year is a leap year.');
  } else if (year % 100 == 0) {
    print('$year is not a leap year.');
  } else if (year % 4 == 0) {
    print('$year is a leap year.');
  } else {
    print('$year is not a leap year.');
  }
}
