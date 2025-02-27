void main (){
  CountWords("go   on   essraa   ");
}

void CountWords(String words){
  List<String> list = words.trim().split(RegExp(r'\s+'));
  print(list);
}