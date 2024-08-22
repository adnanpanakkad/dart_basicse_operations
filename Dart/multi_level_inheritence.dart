// Base class
class Animal {
  void eat() {
    print('Eating...');
  }
}

// Derived class inheriting from Animal
class Mammal extends Animal {
  void breathe() {
    print('Breathing...');
  }
}

// Further derived class inheriting from Mammal
class Dog extends Mammal {
  void bark() {
    print('Barking...');
  }
}

void main() {
  Dog myDog = Dog();
  myDog.eat();    // Inherited from Animal
  myDog.breathe(); // Inherited from Mammal
  myDog.bark();    // Method from Dog class
}
