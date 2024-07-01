import 'dart:io';

void main(){
  List vowels=[];
  print('Enter a Word without spaces');
  String word=stdin.readLineSync()!;
  for(int i=0;i<word.length;i++){
    if(word[i]=='a' ||word[i]=='e' ||word[i]=='i' ||word[i]=='o' ||word[i]=='u'){
      vowels.add(word[i]);
    }
  }
  print('The vowels are $vowels');
}