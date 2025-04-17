class SparkPlug {
  String type;
  SparkPlug(this.type);
}

class EnginePart {
  SparkPlug? sparkPlug;
  EnginePart({this.sparkPlug});
}

class Engine {
  EnginePart? part;
  Engine({this.part});
}

class Car {
  String brand;
  String model;
  int year;
  Engine engine;
  Car(this.brand, this.model, this.year, this.engine);

  void displayInfo() {
    print("$brand, $model, $year");
  }

  String? displaySparkLugType() {
    return engine.part?.sparkPlug?.type;
  }
}

class Garage {
  List<Car> cars = [];

  void addCar(Car car) {
    cars.add(car);
  }

  void showAllCars() {
    cars.map((el) => el.displayInfo()).toList();
  }

  List<Car> getCarsByBrand(String brandName) {
    return cars.where((car) => car.brand == brandName).toList();
  }
}

void main(List<String> args) {
  List<Car> cars = [
    Car("Toyota", "Prius", 2012, Engine()),
    Car("Sonata", "Hyundai", 2020, Engine())
  ];

  // cars.map((el) => el.displayInfo()).toList();
  Garage garage = Garage();

  garage.addCar(Car("Toyota", "Prius", 2012,
      Engine(part: EnginePart(sparkPlug: SparkPlug("Iradium")))));
  garage.addCar(Car('Toyota', 'Corolla', 2021, Engine()));

  garage.showAllCars();
  List<Car> toyotaCars = garage.getCarsByBrand("Toyota");
  print("List of Toyota:");
  toyotaCars.map((car) {
    // if (car.engine.part != null) {
    //   if (car.engine.part!.sparkPlug != null) {
    //     print('Spark Plug Type: ${car.engine.part!.sparkPlug!.type}');
    //   }
    // }
    print(car.displaySparkLugType());
    return car.displayInfo();
  }).toList();
}
