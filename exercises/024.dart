/*024 - Create a program that reads the name of a city and says whether it starts
  with the name "Santo" or not
*/

import 'dart:io';

void main() {
  print("Enter the name of the city.");
  String? city = stdin.readLineSync();
  if (city!.toLowerCase().startsWith('santo')) {
    print(true);
  } else {
    print(false);
  }
}
