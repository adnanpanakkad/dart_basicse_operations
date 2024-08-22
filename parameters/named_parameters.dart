void greet({required String name, int age = 0}) {
  print('Hello, $name. You are $age years old.');
}

void main() {
  greet(name: 'David');         // Only the name is provided
  greet(name: 'Eva', age: 28);  // Both parameters are provided
}
