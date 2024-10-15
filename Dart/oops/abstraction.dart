abstract class Shape {
  double area(); // Abstract method
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius ;
  }
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double area() {
    return side * side;
  }
}

void main() {
  Shape circle = Circle(3);
  Shape square = Square(4);

  print(circle.area()); // Output: 28.26
  print(square.area()); // Output: 16
}
