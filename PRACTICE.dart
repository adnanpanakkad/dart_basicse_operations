mixin Animal {
  void hi() {
    print('hi');
  }
}

mixin Dog {
  void helloto() {
    print('hello all');
  }
}

class Human with Dog, Animal {
  void hello() {
    print('hello');
  }
}

void main() {
  var dog = Human();
  dog.helloto();
  dog.hello();
  dog.hi();
}
