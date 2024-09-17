void main() {
  List<int> arr = [10, 11, 13, 14, 15];
  int? missingNumber = findMissingInteger(arr);
  if (missingNumber != null) {
    print('The missing number is: $missingNumber');
  } else {
    print('No missing number found');
  }
}

int? findMissingInteger(List<int> arr) {
  if (arr.isEmpty) return null;

  // Find the minimum and maximum values in the list
  int min = arr[0];
  int max = arr[0];
  
  for (int num in arr) {
    if (num < min) min = num;
    if (num > max) max = num;
  }

  // Check for missing numbers in the range from min to max
  for (int i = min; i <= max; i++) {
    if (!arr.contains(i)) {
      return i; // Return the missing number
    }
  }

  // Return null if no missing number is found
  return null;
}
