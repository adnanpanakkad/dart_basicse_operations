void main() {
  List<int> arr1 = [7, 2, 9, 4, 1, 8, 78, 7];
  List<int> arr2 = [5, 9, 12, 7, 14, 7];
  List<int> result = findduplicate(arr1, arr2);
  print(result);
}

List<int> findduplicate(List<int> arr1, List<int> arr2) {
  Set<int> set1 = arr1.toSet();
  Set<int> set2 = arr2.toSet();

  Set<int> commonvalue = set1.intersection(set2);
  return commonvalue.toList();
}
