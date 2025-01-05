/*034 - Write a program that reads an employee's salary and calculates the
      value of their raise.
      • For salaries above R$1250, calculate a 10% raise.
      • For salaries at or below this amount, calculate a 15% raise.
*/

import 'dart:io';

void main() {
  print('Enter the employee salary:');
  double salary = double.parse(stdin.readLineSync()!);
  double salaryWithRaise;

  if (salary > 1250) {
    salaryWithRaise = salary * 1.1;
  } else {
    salaryWithRaise = salary * 1.15;
  }

  print('The employee salary is $salary.');
  print('With the raise, it will be $salaryWithRaise.');
}
