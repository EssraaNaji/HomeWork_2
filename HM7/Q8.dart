void main (){
  sum([7,9,100]);
}
void sum(List<int> list){
  int sum=0;

  for(var i in list){
    sum+=i;
  }
  print(sum);
}