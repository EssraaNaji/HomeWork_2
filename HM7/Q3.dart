

void main (){
 print(CheckLeapYear(1905)?"its Leap Year" :"not Leap Year");
}
bool CheckLeapYear(int year){
  if( (year %100==0 && year %400==0) || year %4==0 ){
    return true ;
  }
  else return false;

}