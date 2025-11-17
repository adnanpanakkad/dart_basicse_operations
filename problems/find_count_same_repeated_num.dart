void main() {
  List<int> nums = [1,2,2,3,3,3,4,5,5,1];

  for (int i = 0; i < nums.length; i++) {
    int count = 0;

    for (int j = 0; j < nums.length; j++) {
      if (nums[i] == nums[j]) {
        count++;
      }
    }

  }
}
