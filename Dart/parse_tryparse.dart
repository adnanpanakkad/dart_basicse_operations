
void main() {
  String validString = "123";
  int? validNumber = int.parse(validString);
  print(validNumber); // Output: 123

  String invalidString = "abc";
  int? invalidNumber = int.tryParse(invalidString);
  print(invalidNumber); // Output: null
}
