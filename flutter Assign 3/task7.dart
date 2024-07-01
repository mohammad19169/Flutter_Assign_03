import 'dart:io';

void main(){
  print('Enter number');
  int input=int.parse(stdin.readLineSync()!);
  for(int i=1;i<=10;i++){
    print('$input * $i = ${input*i}');
  }
}