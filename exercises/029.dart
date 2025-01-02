/*029 - Write a program that reads the car's speed.
If it exceeds 80 km/h, show a message that it was fined.
The fine will cost R$7.00 for each km above the limit.
*/

import 'dart:io';

void main() {
  print('What is the car speed in kilometers?');
  double carSpeed = double.parse(stdin.readLineSync()!);

  if (carSpeed > 80) {
    double fine = (carSpeed - 80) * 7;
    print('You exceeded the speed limit (80km/h).');
    print('You have been fined: R\$${fine.toStringAsFixed(2)}');
  } else {
    print('Your speed is within the limit. Have a safe trip.');
  }
}
