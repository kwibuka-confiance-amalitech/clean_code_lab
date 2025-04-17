class Car {
  String brand;
  String model;
  String engine;
  int year;

  Car(this.brand, this.model, this.engine, this.year);
}

void main(List<String> args) {
  final carsList = [
    Car("Toyota", "Prius", "v3", 2012),
    Car("Sonata", "Hyundai", "v3", 2012),
  ];
}
