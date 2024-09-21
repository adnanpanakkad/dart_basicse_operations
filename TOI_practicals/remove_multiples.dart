void main() {
  List<int> numbers = [1, 5, 10, 12, 15, 20, 25, 30, 35, 40, 50];

  // Removing multiples of 5
  numbers.removeWhere((number) => number % 5 == 0);

  print("List after removing multiples of 5: $numbers");
}
