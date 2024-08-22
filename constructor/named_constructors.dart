class Person {
  String name;
  int age;

  // Default constructor
  Person(this.name, this.age);

  // Named constructor
  Person.withName(this.name) : age = 0; // Default age value
}

void main() {
  var person1 = Person('Alice', 30); // Using the default constructor
  var person2 = Person.withName('Bob'); // Using the named constructor
}
