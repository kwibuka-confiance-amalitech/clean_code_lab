// A small console app that demonstrates inheritance in Dart

// Base class (parent)
class Vehicle {
  String make;
  String model;
  int year;

  Vehicle(this.make, this.model, this.year);

  void startEngine() {
    print('The $make $model\'s engine is starting...');
  }

  void stopEngine() {
    print('The $make $model\'s engine is stopping...');
  }

  @override
  String toString() {
    return '$year $make $model';
  }
}

// Child class inheriting from Vehicle
class Car extends Vehicle {
  int numberOfDoors;
  bool hasAutomaticTransmission;

  // Constructor using super to call parent constructor
  Car(String make, String model, int year, this.numberOfDoors,
      this.hasAutomaticTransmission)
      : super(make, model, year);

  void honk() {
    print('The $make $model honks: Beep beep!');
  }

  // Method override example
  @override
  void startEngine() {
    super.startEngine(); // Call parent method
    print('The car air conditioning system is also starting...');
  }

  @override
  String toString() {
    return '${super.toString()} with $numberOfDoors doors and ${hasAutomaticTransmission ? 'automatic' : 'manual'} transmission';
  }
}

// Another child class inheriting from Vehicle
class Motorcycle extends Vehicle {
  bool hasSideCar;

  Motorcycle(String make, String model, int year, this.hasSideCar)
      : super(make, model, year);

  void wheelie() {
    print('The $make $model is doing a wheelie!');
  }

  @override
  String toString() {
    return '${super.toString()} ${hasSideCar ? 'with' : 'without'} sidecar';
  }
}

// Main function to demonstrate inheritance
void main() {
  print('===== INHERITANCE DEMONSTRATION =====');

  print('\n1. Creating a base Vehicle:');
  var vehicle = Vehicle('Generic', 'Transport', 2023);
  print('Created: $vehicle');
  vehicle.startEngine();
  vehicle.stopEngine();

  print('\n2. Creating a Car (inherits from Vehicle):');
  var car = Car('Toyota', 'Corolla', 2022, 4, true);
  print('Created: $car');

  print('\n3. Inherited methods demonstration:');
  print('Car can use methods defined in Vehicle:');
  car.startEngine(); // Overridden method
  car.stopEngine(); // Inherited method

  print('\n4. Car-specific methods:');
  car.honk();

  print('\n5. Creating a Motorcycle (inherits from Vehicle):');
  var motorcycle = Motorcycle('Honda', 'CBR', 2023, false);
  print('Created: $motorcycle');
  motorcycle.startEngine();
  motorcycle.wheelie();

  print('\n6. Polymorphism demonstration:');
  List<Vehicle> vehicles = [
    vehicle,
    car,
    motorcycle,
  ];

  print('Calling methods polymorphically:');
  for (var v in vehicles) {
    print('Vehicle: $v');
    v.startEngine(); // Will call the appropriate version based on actual type
    print('---');
  }

  print('\n===== END OF DEMONSTRATION =====');
}
