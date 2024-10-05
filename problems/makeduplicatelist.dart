void main() {
  List<int> arr1 = [7, 2, 9, 4, 1, 8, 78, 7];
  List<int> arr2 = [5, 9, 12, 7, 14,7];
  List<int> result = makeduplicatelist(arr1, arr2);
  print(result);
}

List<int> makeduplicatelist(List<int> arr1, List<int> arr2) {
 
  List<int> store = [];

  for (int value in arr2) {
    if (arr1.contains(value) && arr2.contains(value)) {
      store.add(value);
    }
  }
  return store;
}
