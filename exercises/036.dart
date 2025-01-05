/*036 - Write a program to approve a bank loan for the purchase of a house.
  Ask for the value of the house, the buyer's salary, and in how many
  years they will pay.
  The monthly installment cannot exceed 30% of the salary, otherwise the
  loan will be denied.
*/

import 'dart:io';

void main() {
  print('What is the value of the house?');
  double houseValue = double.parse(stdin.readLineSync()!);
  print('What is the buyer\'s salary?');
  double buyerSalary = double.parse(stdin.readLineSync()!);
  print('In how many years does the buyer want to pay?');
  int years = int.parse(stdin.readLineSync()!);

  int installments = years * 12;
  double installmentValue = houseValue / installments;

  bool isEligible(double salary) {
    if (installmentValue >= salary * 0.3) {
      return false;
    }
    return true;
  }

  if (isEligible(buyerSalary)) {
    print('The buyer is eligible for the loan!');
    print('Total house value: \$${houseValue.toStringAsFixed(2)}');
    print(
        'Value of each installment: \$${installmentValue.toStringAsFixed(2)}');
    print('Installments: $installments');
  } else {
    print('The buyer is not eligible for the loan!');
  }
}
