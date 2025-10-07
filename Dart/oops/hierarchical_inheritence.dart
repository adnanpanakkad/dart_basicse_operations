class Animal {
  void eat() {
    print("Animals eat food");
  }
}

class Dog extends Animal {
  void bark() {
    print("Dog barks");
  }
}

class Cat extends Animal {
  void meow() {
    print("Cat meows");
  }
}

void main() {
  Dog dog = Dog();
  dog.eat(); 
  dog.bark();

  Cat cat = Cat();
  cat.eat();
  cat.meow();
}
