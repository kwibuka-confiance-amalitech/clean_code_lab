import 'dart:math';
// A small console app that demonstrates polymorphism in Dart

// Abstract base class that defines a common interface
abstract class Shape {
  // Abstract methods (no implementation)
  double calculateArea();
  double calculatePerimeter();

  // Common method with implementation
  void printInfo() {
    print('===== ${this.runtimeType} =====');
    print('Area: ${calculateArea().toStringAsFixed(2)}');
    print('Perimeter: ${calculatePerimeter().toStringAsFixed(2)}');
  }
}

// Circle implementation
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14159 * radius * radius;
  }

  @override
  double calculatePerimeter() {
    return 2 * 3.14159 * radius;
  }

  // Circle-specific method
  void describeRadius() {
    print('This circle has a radius of $radius units.');
  }
}

// Rectangle implementation
class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }

  @override
  double calculatePerimeter() {
    return 2 * (width + height);
  }

  // Rectangle-specific method
  bool isSquare() {
    return width == height;
  }
}

// Triangle implementation
class Triangle extends Shape {
  double a;
  double b;
  double c;

  Triangle(this.a, this.b, this.c);

  @override
  double calculateArea() {
    // Heron's formula
    double s = (a + b + c) / 2;
    return sqrt(s * (s - a) * (s - b) * (s - c));
  }

  @override
  double calculatePerimeter() {
    return a + b + c;
  }
}

// Helper function to demonstrate passing different objects to the same function
void printShapeInfo(Shape shape) {
  print('\nProcessing a shape through common interface:');
  shape.printInfo();
}

// Import for sqrt function used in Triangle class

void main() {
  print('===== POLYMORPHISM DEMONSTRATION =====\n');

  print('1. Creating different shape objects:');
  Circle circle = Circle(5);
  Rectangle rectangle = Rectangle(4, 6);
  Rectangle square = Rectangle(4, 4);
  Triangle triangle = Triangle(3, 4, 5);

  print('\n2. Compile-time polymorphism (method overriding):');
  print('Each shape implements calculateArea() differently:');
  print('Circle area: ${circle.calculateArea().toStringAsFixed(2)}');
  print('Rectangle area: ${rectangle.calculateArea().toStringAsFixed(2)}');
  print('Triangle area: ${triangle.calculateArea().toStringAsFixed(2)}');

  print('\n3. Runtime polymorphism (treating objects through base class):');
  List<Shape> shapes = [circle, rectangle, square, triangle];

  print('Iterating through shapes list:');
  for (var shape in shapes) {
    print('Shape type: ${shape.runtimeType}');
    print('Area: ${shape.calculateArea().toStringAsFixed(2)}');
    print('Perimeter: ${shape.calculatePerimeter().toStringAsFixed(2)}');
    print('---');
  }

  print('\n4. Dynamic method dispatch:');
  printShapeInfo(circle);
  printShapeInfo(rectangle);
  printShapeInfo(triangle);

  print('\n5. Accessing specific behavior using type checking and casting:');
  for (var shape in shapes) {
    if (shape is Circle) {
      // Accessing Circle-specific method
      shape.describeRadius();
    } else if (shape is Rectangle) {
      // Accessing Rectangle-specific method and property
      print(
          'This rectangle has width ${shape.width} and height ${shape.height}.');
      print('Is it a square? ${shape.isSquare() ? 'Yes' : 'No'}');
    }
  }

  print('\n===== END OF DEMONSTRATION =====');
}
