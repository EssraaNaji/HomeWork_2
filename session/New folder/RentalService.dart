import 'dart:io';

import 'Q1.dart';

class RentalService {
  List<Vehicle> _Service =[];
  void addVehicle(Vehicle vehicle){
    if(!vehicle.isAvailable) {
      _Service.add(vehicle);
      vehicle.isAvailable=true ;
    }
    else {
      print("Vehicle already exist");
    }
  }

 void  rentVehicle({required String model}){
     for(var i in _Service){
       if(i.model==model){
          if(i.isAvailable) {
            print(" rented successfully");
            i.isAvailable=false;
          }
          else {
            print(" it's already rented");
          }
       }
     }
  }
  
  String returnVehicle(String model){
    for(var i in _Service){

      if(i.model==model){

        if(i.isAvailable){
          print("it was not rented.");
        }
        else {
          i.isAvailable==false ? print("returned successfully ") : "";
           i.isAvailable=true;
        }

      }

    }
    return "Not Found";
  }
  void listAvailableVehicles(){
    for(var vehicle in _Service){
     if(vehicle.isAvailable) {
       print("${vehicle.brand} , ${vehicle.model} ${vehicle.rentalPricePerDay}");
     }

    }
  }

}