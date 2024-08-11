//012 - Make a program that reads the price of a product and shows its new
//      price, with a 5% discount.

import 'dart:io';

void main() {
  print('What is the product price:');
  double price = double.parse(stdin.readLineSync()!);
  print('The product that cost R\$$price, with the 5% discount');
  print('will now cost R\$${price * 0.95}.');
}
