import 'Q1.dart';
import 'RentalService.dart';

void main (){
  Vehicle vehicle = Car("2020", "BM", 200, 4);
  RentalService rental=RentalService();
  rental.addVehicle(vehicle);
  rental.listAvailableVehicles();

  rental.rentVehicle(model: "2020");
  rental.returnVehicle("2020");
  rental.rentVehicle(model: "2020");

}