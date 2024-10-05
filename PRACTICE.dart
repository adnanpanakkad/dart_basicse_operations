void main() {
  List<int> arr1 = [1, 2, 35, 7, 9];
  List<int> arr2 = [3, 4, 5, 7, 9];

  // Convert both lists to sets and find the intersection
  List<int> duplicates = arr1.toSet().intersection(arr2.toSet()).toList();

  print(duplicates);
}
