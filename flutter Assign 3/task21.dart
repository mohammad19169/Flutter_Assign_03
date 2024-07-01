import 'dart:io';

void main(){
  List numbers=[];
  print('How many numbers you want to check?');
  int n=int.parse(stdin.readLineSync()!);
  for(int i=0;i<n;i++){
  print('Enter number ${i+1}');
  int item=int.parse(stdin.readLineSync()!);
  numbers.add(item);
  }
  numbers.sort();
  
  print('The smallest element is ${numbers[0]}');
  print('The largest number is ${numbers[numbers.length-1]}');
  }
