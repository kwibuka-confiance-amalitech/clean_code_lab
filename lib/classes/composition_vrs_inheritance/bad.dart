
// Inheritance Gone Wrong
class Animal {
  void move() => print("Animal is moving");
}

class Bird extends Animal {
  void fly() => print("Bird is flying");
}

class Penguin extends Bird {
  void swim() => print("Penguin is swimming");
}
