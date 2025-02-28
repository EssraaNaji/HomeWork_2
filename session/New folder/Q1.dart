void main (){

}
abstract class Vehicle {
  String model ;
   String brand ;
   double rentalPricePerDay ;
   bool isAvailable=false  ;

  Vehicle(this.model, this.brand, this.rentalPricePerDay);
  void displayDetails();
}

//////////////////

class Car  extends Vehicle{
  int numberOfSeats ;

  Car(super.model, super.brand, super.rentalPricePerDay , this.numberOfSeats);

  @override
  void displayDetails() {
  print("${this.numberOfSeats} ${this.isAvailable} ${this.model} ${this.brand} ${this.rentalPricePerDay} ");

  }

}
////////////


class Motorcycle extends Vehicle {
  bool hasSidecar ;
  Motorcycle(super.model, super.brand, super.rentalPricePerDay , this.hasSidecar);

  @override
  void displayDetails() {
    print("${this.hasSidecar} ${this.isAvailable} ${this.model} ${this.brand} ${this.rentalPricePerDay} ");
  }

}