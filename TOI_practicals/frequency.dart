void main() {
  List<int> numbers = [1, 5, 10, 12, 5, 20, 5, 30, 35, 5, 50];
  int target = 12;
  print(findFrequency(numbers, target));
}

int findFrequency(List<int> arr, int target) {
  int frq = 0;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == target) {
      frq++;
    }
  }

  return frq;
}
