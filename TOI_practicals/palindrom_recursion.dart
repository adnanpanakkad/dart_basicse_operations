bool isPalindrome(String s) {
  // Base case: if the string is empty or has one character, it's a palindrome
  if (s.length <= 1) {
    return true;
  }

  // Compare the first and last characters
  if (s[0] != s[s.length - 1]) {
    return false;
  }

  // Recursively check the substring without the first and last characters
  return isPalindrome(s.substring(1, s.length - 1));
}

void main() {
  String input = "madam";
  print(isPalindrome(input)); // Output: true
}
