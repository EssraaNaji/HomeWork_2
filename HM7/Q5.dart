void main (){
  print(LongestWord("   go on     essraa  "));
}
 String LongestWord(String word){
  List<String> list = word.split(" ");

  String answer="";
  for (String it in list ){
    if(it.length > answer.length){
      answer=it;
    }
  }
  return "Longest word is $answer";
}