import 'dart:io';

void main() {
  List<int> numbers = [-5, 3, -2, 7, -10, 4, -1];

  int sum = 0;
  int count = 0;
  for (int number in numbers) {
    if (number < 0) {
      sum += number;
      count++;
    }
  }
  if (count > 0) {
    double average = sum / count;
    print('The average of all negative numbers is: $average');
  } else {
    print('There are no negative numbers in the list.');
  }
}
