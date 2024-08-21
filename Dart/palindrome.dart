
void main() {
  String a = "MALAYALAM";
  String b = a.split('').reversed.join('');
  if (a == b) {
    print("Palindrome");
  } else {
    print("Not a palindrome");
  }
}
