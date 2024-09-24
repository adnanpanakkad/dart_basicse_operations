String reverseString(String s) {
  // Base case: if the string is empty or has one character, return it as is
  if (s.isEmpty) {
    return s;
  }

  // Recursive case: reverse the substring from the second character onward,
  // then add the first character to the end
  return reverseString(s.substring(1)) + s[0];
}

void main() {
  String input = "HELLO WORLD";
  print(reverseString(input)); // Output: "olleh"
}
