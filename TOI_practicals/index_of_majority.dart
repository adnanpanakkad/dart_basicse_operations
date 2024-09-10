List<int>? twoSum(List<int> nums, int target) {
  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] == target) {
        return [i, j];
      }
    }
  }
  return null; // Return null if no such pair is found
}

void main() {
  List<int> nums = [2, 7, 11, 15];
  int target = 9;

  List<int>? result = twoSum(nums, target);

  if (result != null) {
    print('Indices: ${result[0]}, ${result[1]}'); // Output: Indices: 0, 1
  } else {
    print('No two numbers add up to the target.');
  }
}
