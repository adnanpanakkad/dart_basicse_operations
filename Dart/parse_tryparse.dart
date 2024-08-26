// void main() {
//   String numberString = "123";
//   int number = int.parse(numberString);
//   print(number); // Output: 123

// }
void main() {
  String validString = "123";
  int? validNumber = int.tryParse(validString);
  print(validNumber); // Output: 123

  String invalidString = "abc";
  int? invalidNumber = int.tryParse(invalidString);
  print(invalidNumber); // Output: null
}
