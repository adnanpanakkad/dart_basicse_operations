class Car {
  int? model;
  String? name;
  Car() {
    model = 1234;
    name = 'totyota';
  }
}

void main() {
  Car car = Car();
  print(car.name);
  print(car.model);
}
