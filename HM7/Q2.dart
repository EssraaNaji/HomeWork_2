void main (){
temperature(unit: "c" ,value:  7.7);

}

void   temperature ({ required String  unit  , required value }){
   print(" temperature is ${unit =="c" ?   value!*10 : value/10 }");

}