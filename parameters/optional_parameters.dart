void greet(String name, [int age = 25, String? place]) {
  print('Hello, $name. You are $age years old.');
}

void main() {
  greet('Bob'); // age is omitted, default value 0 is used
  greet('Charlie', 25, 'palakkad'); // Both parameters are provided
}
