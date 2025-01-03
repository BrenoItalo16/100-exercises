/*031 - Develop a program that asks for the distance of a trip in km.
Calculate the ticket price, charging R$0.50 per kilometer for trips up to
200 km and R$0.45 for longer trips.
*/

import 'dart:io';

void main() {
  print('What is the distance of the trip in km?');
  double distance = double.parse(stdin.readLineSync()!);

  if (distance <= 200) {
    print('The distance of the trip is ${distance.toStringAsFixed(2)} km');
    print('and it will cost R\$${(distance * 0.5).toStringAsFixed(2)}.');
  } else {
    print('The distance of the trip is ${distance.toStringAsFixed(2)} km');
    print('and it will cost R\$${(distance * 0.45).toStringAsFixed(2)}.');
  }
}
