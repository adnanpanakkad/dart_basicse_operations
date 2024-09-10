
void main() {
  String validString = "123";
  int? validNumber = int.tryParse(validString);
  print(validNumber); // Output: 123

  String invalidString = "abc";
  int? invalidNumber = int.tryParse(invalidString);
  print(invalidNumber); // Output: null
}
