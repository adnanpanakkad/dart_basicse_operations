void main() {
  List<int> numbers = [3, 5, 1, 9, 7, 2];

  int min = numbers[0];
  int max = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] < min) {
      min = numbers[i];
    }
    if (numbers[i] > max) {
      max = numbers[i];
    }
  }

  print("Minimum value: $min");
  print("Maximum value: $max");
}
