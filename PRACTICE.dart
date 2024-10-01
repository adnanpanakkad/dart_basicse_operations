List<List<int>> twoSum(List<int> nums, int target) {
  List<List<int>> results = [];

  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] == target) {
        results.add([i, j]); // Add both indices if the sum matches the target
      }
    }
  }

  return results; // Return all pairs of indices
}

void main() {
  List<int> nums = [2, 7, 11, 15, 7]; 
  int target = 9; 

  List<List<int>> result = twoSum(nums, target);

  print(result); // It will print all the pairs of indices that satisfy the condition
}
