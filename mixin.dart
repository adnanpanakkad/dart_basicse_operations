mixin Animal {
  void AnimalHello() {
    print("animal hello");
  }
}
mixin Animal1 {
  void Animal1Hello() {
    print("animal1 hello");
  }
}
mixin Animal2 {
  void Animal2Hello() {
    print("animal2 hello");
  }
}

class Human with Animal, Animal1, Animal2 {
  void hello() {
    print("hello guys");
  }
}

void main() {
  var human = Human();
  human.AnimalHello();
  human.Animal1Hello();
  human.Animal2Hello();
}
