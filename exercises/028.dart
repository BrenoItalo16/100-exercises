/*028 - Write a program that makes the computer 'think' of an integer between
0 and 5 and asks the user to try to guess which number was chosen by the
computer. The program should display on the screen whether the user won or lost.
*/

import "dart:io";
import "dart:math";

void main() {
  print('Guess a number between 0 and 5');
  int? number = int.parse(stdin.readLineSync()!);
  int botNumber = Random().nextInt(6);
  print('${botNumber}');
  if (number != botNumber) {
    print('Ihhh! Wrong answer. hahahaha');
    print(
        'You have typed ${number}, but the number I was thinking of was ${botNumber}');
  } else {
    print('Well done! You guessed the number I was thinking of.');
    print('I have thought in ${botNumber} and you have typed ${number}.');
  }
}
