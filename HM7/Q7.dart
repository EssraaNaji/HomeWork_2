import 'dart:io';

void main (){
Reverse("essraa");
}
void Reverse (String word){
  for(int i =word.length-1 ; i>=0 ; i--){
    stdout.write(word[i]);
  }
}