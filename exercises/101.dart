/* 101 - Crie um programa que receba um código "hexadecimal" de uma cor e 
retorne o código "HSL".
*/

import 'dart:io';
import 'dart:math';

void main() {
  print('Digite o código hexadecimal da cor:');
  String? hex = stdin.readLineSync();
  if (hex!.length != 6) {
    print('Código inválido!');
    return;
  }
  int r = int.parse(hex.substring(0, 2), radix: 16);
  int g = int.parse(hex.substring(2, 4), radix: 16);
  int b = int.parse(hex.substring(4, 6), radix: 16);
  double h = 0;
  double s = 0;
  double l = 0;
  double maxVal = max(max(r, g), b).toDouble();
  double minVal = min(min(r, g), b).toDouble();
  double delta = maxVal - minVal;
  if (delta == 0) {
    h = 0;
  } else if (maxVal == r) {
    h = 60 * (((g - b) / delta) % 6);
  } else if (maxVal == g) {
    h = 60 * (((b - r) / delta) + 2);
  } else {
    h = 60 * (((r - g) / delta) + 4);
  }
  if (maxVal == 0) {
    s = 0;
  } else {
    s = delta / maxVal;
  }
  l = (maxVal + minVal) / 2 / 255;

  // Calculate the separator value for the first half
  int separator1 = (l * 100).round();
  // Calculate the separator value for the second half
  int separator2 = 100 - (l * 100).round(); // 100% - separator1

  // Generate the color codes
  String colorCodes = '';

  // First half
  for (int i = 100; i <= 400; i += 100) {
    double multi = separator1 / 10; // 10% of the second separator
    int multiplyer = 0;

    if (i == 400) {
      multiplyer = 2;
    } else if (i == 300) {
      multiplyer = 4;
    } else if (i == 200) {
      multiplyer = 6;
    } else if (i == 100) {
      multiplyer = 8;
    }

    int value2 = (multi * multiplyer).round();
    colorCodes +=
        'PRIMARY[$i] - HSL (${h.round()}, ${(s * 100).round()}, ${separator1 - value2})\n';
    multiplyer = 0;
  }

  // Second half
  for (int i = 500; i <= 900; i += 100) {
    double multi = separator2 / 10; // 10% of the second separator
    int multiplyer = 0;

    if (i == 500) {
      colorCodes +=
          'PRIMARY[$i] - HSL (${h.round()}, ${(s * 100).round()}, ${(l * 100).round()})\n';
    } else {
      if (i == 600) {
        multiplyer = 2;
      } else if (i == 700) {
        multiplyer = 4;
      } else if (i == 800) {
        multiplyer = 6;
      } else if (i == 900) {
        multiplyer = 8;
      }

      int value2 = (multi * multiplyer).round();
      colorCodes +=
          'PRIMARY[$i] - HSL (${h.round()}, ${(s * 100).round()}, ${separator1 + value2})\n';
      multiplyer = 0;
    }
  }

  print('HSL: ${h.round()}, ${(s * 100).round()}, ${(l * 100).round()}');
  print('Color Codes:\n$colorCodes');
}
