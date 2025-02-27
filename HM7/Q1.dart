

import 'dart:io';

void main (){
  print("enter 2 numbers ");
  int x = int.parse(stdin.readLineSync()!) , y = int.parse(stdin.readLineSync()!)  ;
  print("choose operator");
  String operator = stdin.readLineSync()!;
  switch (operator)  {
    case  "+" :
      {
        print("sum = ${x + y}");
        break;
      }
    case "-"  : {
      print("subtraction = ${x - y}");
      break;
    }
    case "*" :{
      print("multiplication = ${x * y}");
      break;
    }
    case "/":{
      if (y!=0)
      print("division = ${x / y}");
      else
        print("Error 404");
      break;
    }
  }

}
