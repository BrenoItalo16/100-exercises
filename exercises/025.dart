/*025 - Create a program that reads a person's name and says if they have "Silva" in their name.
*/

import 'dart:io';

void main() {
  print('Type a full name');
  String? fullName = stdin.readLineSync();
  print(fullName.toString().toLowerCase().contains('silva'));
}
