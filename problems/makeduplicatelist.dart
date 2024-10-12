void main() {
  List<int> arr1 = [7, 2, 9, 4, 1, 8, 78, 7];
  List<int> arr2 = [5, 9, 12, 7, 14, 7];
  List<int> result = makeDuplicateList(arr1, arr2);
  print(result); // Output: [7, 9]
}

List<int> makeDuplicateList(List<int> arr1, List<int> arr2) {
  // Convert lists to sets to get unique values
  Set<int> set1 = arr1.toSet();
  Set<int> set2 = arr2.toSet();

  // Find the intersection of both sets
  Set<int> commonElements = set1.intersection(set2);

  // Convert the result back to a list
  return commonElements.toList();
}
