/*032 - Write a program that reads the current year and shows if it is a "leap year".
     • A year is leap if it is divisible by 4.
     • But, if it is also divisible by 100, it is not leap unless it is divisible by 400.
*/
void main() {
  final currentYear = DateTime.now().year;

  void isLeapYear(year) {
    if (year % 400 == 0 || year % 4 == 0) {
      print('$year is a leap year.');
    } else if (year % 100 == 0) {
      print('$year is not a leap year.');
    } else {
      print('$year is not a leap year.');
    }
  }

  isLeapYear(currentYear);
}
