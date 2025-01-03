/*033 - Create a program that reads 3 integers and shows which is the largest
  and which is the smallest.
*/

import 'dart:io';

void main() {
  List<int> numbers = [];
  for (int i = 0; i < 3; i++) {
    print('Enter the ${i + 1}th number:');
    numbers.add(int.parse(stdin.readLineSync()!));
  }
  numbers.sort();
  print('Largest number: ${numbers.last}');
  print('Smallest number: ${numbers.first}');
}
