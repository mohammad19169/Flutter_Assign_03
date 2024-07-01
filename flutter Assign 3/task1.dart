import 'dart:io';
void main(){
  List <int>numbers=[];
  List <int>even=[];
  for(int i=0;i<5;i++){
    print('Enter number ${i+1}');
    int input=int.parse(stdin.readLineSync()!);
    if(input!=null){
      numbers.add(input);
    }
    else{
      print('Enter valid number');
      i--;
    }
    if(input%2==0){
      even.add(input);
    }
  }
  print('Original List: $numbers');
  print('Even numbers: $even');
}