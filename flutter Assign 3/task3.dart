import 'dart:io';
import 'dart:math';

void main() {
  print('Enter a number');
  double input = double.parse(stdin.readLineSync()!);

  if (input <= 1) {
    print('Not Prime');
  } else if (input <= 3) {
    print('Prime');
  } else if (input % 2 == 0 || input % 3 == 0) {
    print('Not Prime');
  } else {
    bool isPrime = true;
    for (int i = 5; i <= sqrt(input); i += 6) {
      if (input % i == 0 || input % (i + 2) == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime) {
      print('Prime');
    } else {
      print('Not Prime');
    }
  }
}
