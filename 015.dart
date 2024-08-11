//015 - Write a program that asks the user for the number of kilometers traveled
//      by a rented car, as well as the number of days the car was rented.
//      Calculate the price to be paid, knowing that the car costs $60 per day
//      and $0.15 per kilometer driven.

import 'dart:io';

void main() {
  print('How many days was the car rented?');
  int days = int.parse(stdin.readLineSync()!);

  print('How many kilometers did the car travel?');
  double km = double.parse(stdin.readLineSync()!);

  double daysCost = days * 60;
  double kmCost = km * 0.15;
  double totalCost = daysCost + kmCost;

  print(
      'You rented the car for $days days and traveled ${km.toStringAsFixed(2)} km');
  print('The cost for renting the car is \$${daysCost.toStringAsFixed(2)}');
  print(
      'The cost for traveling ${km.toStringAsFixed(2)} km is \$${kmCost.toStringAsFixed(2)}');
  print('The total cost is \$${totalCost.toStringAsFixed(2)}');
}
