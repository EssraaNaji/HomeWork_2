void main (){
print(prime(0, 10));
}
List<int> prime(int start , int end ){
  List<int> prime=[];
  if(start > end ){
    print("Error");
    return [];
  }
  for (int i=start; i<=end ; i++){
    bool f=false ;
     for (int j=2 ; j<i ;j++){
       if(i%j==0){
         f=true;
         break;
       }
     }
    if(!f && i!=0 && i!=1 )prime.add(i);
  }
return prime;
}