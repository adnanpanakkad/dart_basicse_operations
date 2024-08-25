void main() {
  List arr = [1, 2, 3, 4, 5];

  arr.removeWhere((arr) => arr == 1);
  print(arr.runtimeType);
  print(arr);
}
