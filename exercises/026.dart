/*026 - Write a program that reads a sentence from the keyboard and shows:
how many times the letter "A" appears
in which position it appears the first time
in which position it appears the last time
*/

import 'dart:io';
void main() {
  print('Enter a sentence');
  String? sentence = stdin.readLineSync();
   int first = 0, last = 0, count = 0;
   for(int i = 0; i < sentence!.length; i++){
    if(sentence[i].toLowerCase() == 'a'){
      count++;
      if(first == 0){
       first = i + 1;
      }else{
       last = i + 1;
       print('The letter "A" appears $count times.\nThe first time at position $first and the last time at position $last.');
      }
      }
    }
}
