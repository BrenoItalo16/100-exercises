//010 - Create a program that reads how much money a person has in their wallet and
//      shows how many dollars they can buy. Consider US$1.00 = R$5.54

import 'dart:io';

void main() {
  print('How many money do you have in your wallet? R\$:');
  double money = double.parse(stdin.readLineSync()!);
  print('With R\$$money you can buy \$${money / 5.54}');
}
