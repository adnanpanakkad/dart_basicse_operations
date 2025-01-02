void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6]; // Specify type for better safety
  for (int i = 0; i < arr.length - 1; i++) { // Use < arr.length - 1
    if (arr[i + 1] != 0 && arr[i] % arr[i + 1] == 0) { // Avoid division by zero
      print(arr[i]);
    }
  }
}
