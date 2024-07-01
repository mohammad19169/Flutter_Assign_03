import 'dart:io';

void main(){
  List output=[];
  List numbers=[];
  print('How many numbers you want to check?');
  int n=int.parse(stdin.readLineSync()!);
  for(int i=0;i<n;i++){
  print('Enter number ${i+1}');
  int item=int.parse(stdin.readLineSync()!);
  numbers.add(item);
  }
  for(int i=0;i<n;i++){
    if(numbers[i]>5){
      output.add(numbers[i]);
    }
  }
  print('The number greater than 5 are ${output.toSet()}');
}