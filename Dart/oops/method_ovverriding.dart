class Animal {
  void makeSound() {
    print("Animal sound");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Bark");
  }
}

void main() {
  Dog myDog = Dog();
  myDog.makeSound(); // Output: Bark
}
//same functionalities with same value