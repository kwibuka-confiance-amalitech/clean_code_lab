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
  Car(
      {required this.brand,
      required this.model,
      required this.year,
      required this.engine});

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

  List<Car> getCarsByBrand({required String brandName}) {
    return cars.where((car) => car.brand == brandName).toList();
  }
}

void main(List<String> args) {
  // List<Car> cars = [
  //   Car(brand: "Toyota", model: "Prius", year: 2012),
  //   Car(model: "Sonata", brand: "Hyundai", year: 2020)
  // ];

  // cars.map((el) => el.displayInfo()).toList();
  Garage garage = Garage();
  garage.addCar(Car(
      brand: "Toyota",
      model: "Prius",
      year: 2012,
      engine: Engine(part: EnginePart(sparkPlug: SparkPlug("Iradium")))));
  garage.addCar(
      Car(brand: 'Toyota', model: 'Corolla', year: 2021, engine: Engine()));
  // garage.addCar(Car(brand: 'BMW', model: 'X5', year: 2020));
  // garage.addCar(Car(brand: 'Toyota', model: 'RAV4', year: 2022));

  garage.showAllCars();
  List<Car> toyotaCars = garage.getCarsByBrand(brandName: "Toyota");
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
