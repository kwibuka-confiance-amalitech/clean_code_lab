
class Movement {
  void move() => print("Moving");
}

class Swimming {
  void swim() => print("Swimming");
}

class Flying {
  void fly() => print("Flying");
}

class Penguin {
  final Movement movement = Movement();
  final Swimming swimming = Swimming();

  void move() => movement.move();
  void swim() => swimming.swim();
}
