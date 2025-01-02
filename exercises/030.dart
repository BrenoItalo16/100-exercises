/*030 - Create a program that reads an integer and checks if it is even or odd
*/

import 'dart:io';

void main() {
  print('Enter an integer:');
  int number = int.parse(stdin.readLineSync()!);

  String isEvenOrOdd(int number) {
    if (number % 2 == 0) {
      return 'even';
    }
    return 'odd';
  }

  print('The number $number is ${isEvenOrOdd(number)}');
}
