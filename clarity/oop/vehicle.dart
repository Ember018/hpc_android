abstract class Vehicle {
  String model;
  int currentSpeed;

  Vehicle(this.model, this.currentSpeed);

  void displayStatus() {
    print("Model: $model");
    print("Current speed: $currentSpeed");
  }
}

class Sedan extends Vehicle {
  int passengerCount;

  Sedan(String model, int currentSpeed, this.passengerCount)
      : super(model, currentSpeed);

  @override
  void displayStatus() {
    super.displayStatus();
    print("Passenger count: $passengerCount");
  }
}

void main() {
  Sedan generic_sedan = Sedan("Generic Sedan", 90, 2);

  generic_sedan.displayStatus();
}
