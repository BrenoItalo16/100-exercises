/* 035 - Develop a program that reads the length of 3 line segments
     and tells the user if they can form a triangle. */

import 'dart:io';

void main() {
  List<num> segments = [];

  for (var i = 0; i < 3; i++) {
    print('Enter the length of segment ${i + 1}:');
    segments.add(double.parse(stdin.readLineSync()!));
  }

  if (segments[0] < (segments[1] + segments[2]) &&
      segments[1] < (segments[0] + segments[2]) &&
      segments[2] < (segments[0] + segments[1])) {
    print(
        'With the lengths: ${segments[0]}, ${segments[1]}, and ${segments[2]}, it is possible to form a triangle.');
  } else {
    print(
        'With the lengths: ${segments[0]}, ${segments[1]}, and ${segments[2]}, it is not possible to form a triangle.');
  }
}
