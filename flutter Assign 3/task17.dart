import 'dart:io';

void main(){
  String emailstored='umer@1234';
  String pass_stored='1234';
  while(true){
    print('Enter Email');
    String email=stdin.readLineSync()!;
    print('Enter password');
    String pass=stdin.readLineSync()!;
    if(email==emailstored && pass==pass_stored){
      print('Login Successful');
      break;
    }
    else{
      print('Try Again');
    }
  }
}