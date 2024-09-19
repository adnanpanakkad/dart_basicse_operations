List<int> majorityElementIndexes(List<int> arr) {
  int n = arr.length;

  // Outer loop to consider each element as a candidate for majority
  for (int i = 0; i < n; i++) {
    int count = 0;

    // Inner loop to count the frequency of arr[i]
    for (int j = 0; j < n; j++) {
      if (arr[i] == arr[j]) {
        count++;
      }
    }

    // Check if the count of arr[i] is more than half the size of the array
    if (count > n / 2) {
      // If majority element found, collect all indexes of that element
      List<int> indexes = [];
      for (int k = 0; k < n; k++) {
        if (arr[k] == arr[i]) {
          indexes.add(k);
        }
      }
      return indexes;  // Return the list of indexes of the majority element
    }
  }

  // If no majority element is found, return an empty list
  return [];
}

void main() {
  List<int> arr = [1, 1, 2, 1, 3, 5, 1];

  print(majorityElementIndexes(arr));  // Output: [0, 1, 3, 6] (indexes of majority element '1')
}
