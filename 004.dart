//004 - Create a program that reads something from the keyboard and displays its primitive type and all possible information about it on the screen.
//1 - The program should read the input from the keyboard and store it in a variable.
//2 - The program should display the primitive type of the variable.
//3 - The program should display if the variable consists only of spaces.
//4 - The program should display if the variable is numeric.
//5 - The program should display if the variable consists of letters.
//6 - The program should display if the letters are uppercase.
//7 - The program should display if the letters are lowercase.
//8 - The program should display if the letters are capitalized.

import 'dart:io';

void main() {
  print("Type something"); //1
  var input = stdin.readLineSync(); //1
  print('The primitive type of the variable is ${input.runtimeType}'); //2
  print('The variable is only spaces: ${input?.trim().isEmpty}'); //3
  print('The vairable is numeric: ${input is num}'); //4

  bool isAlphSpace(String string) {
    for (int i = 0; i < string.length; i++) {
      if (!(string[i].contains(RegExp(r'[a-zA-Z]')))) {
        return false;
      }
    }
    return true;
  }

  print('The variable is letters: ${isAlphSpace(input.toString())}'); //5
  print('The variable is only UPPERCASE: ${input == input?.toUpperCase()}'); //6
  print('The variable is only lowercase: ${input == input?.toLowerCase()}'); //7
  print(
    'The variable is Capitalized: ${input == input![0].toUpperCase() + input.substring(1).toLowerCase()}', //8
  );
}
