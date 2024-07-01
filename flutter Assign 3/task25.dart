import 'dart:io';
bool isPrime(int num) {
  if (num <= 1) {
    return false;
  }
  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  print('Enter a list of integers separated by spaces:');
  List<int> numbers = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  List<int> primeNumbers = [];

  for (int number in numbers) {
    if (isPrime(number)) {
      primeNumbers.add(number);
    }
  }
  print('Prime numbers: $primeNumbers');
}
