class Animal {
  void sayHello() {
    print("animal say hello");
  }
}

class Human extends Animal {
  void sayName() {
    print("say name");
  }
}

void main() {
  final human = Human();
  human.sayHello();
  human.sayName();
}
