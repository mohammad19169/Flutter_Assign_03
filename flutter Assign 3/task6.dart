import 'dart:io';

void main(){
  int Largest=-1;
  print('How many numbers you want to check?');
  int n=int.parse(stdin.readLineSync()!);
  if(n>0){
  for(int i=0;i<n;i++){
  print('Enter number ${i+1}');
  int num=int.parse(stdin.readLineSync()!);
  if(num==0 || num>Largest){
    Largest=num;
  }
  }
  }
print('Largest number is $Largest');
}