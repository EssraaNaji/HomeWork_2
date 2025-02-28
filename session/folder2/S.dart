void main (){
myclass i1=myclass();
print(i1.add(4));
print(i1.add(4));
print(i1.vadd(3));

}
class myclass {
 List<int> _list =[] ;
   bool add(int num){
     _list.add(num);
     return true ;
   }
 int  vadd(int n)=> n;

    set list(List<int> l1){
     this._list=l1;
   }

 List<int> get list => _list;
}