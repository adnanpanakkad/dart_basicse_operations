class Person {
  String? name;
  int? age;

  // Person() {
  //   name = 'adnan';
  //   age = 19;
  // }

  // Person(this.name, this.age);

  Person.guest() {
    name = 'adhil';
    age = 80;
  }
}

void main() {
  var guest = Person.guest();
  // var person = Person('adjil',15);
  //print(person.name);
  print(guest.name);
}
