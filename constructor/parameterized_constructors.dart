class Person {
  String name;
  int age;

  // Parameterized constructor
  Person(this.name, this.age);
}

void main() {
  var person = Person('Alice', 30); // Creates an instance with specific values
}
