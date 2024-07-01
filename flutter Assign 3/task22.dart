import 'dart:io';
void main(){
   double sum=0;
  List numbers=[];
  print('How many numbers you want to check?');
  int n=int.parse(stdin.readLineSync()!);
  for(int i=0;i<n;i++){
  print('Enter number ${i+1}');
  int item=int.parse(stdin.readLineSync()!);
  numbers.add(item);
  }
  for(int i=0;i<n;i++){
    if(numbers[i]%2!=0){
      sum+=numbers[i]*numbers[i];
    }
  }
  print('The sum of square of all odd numbers in the given list is $sum');
}