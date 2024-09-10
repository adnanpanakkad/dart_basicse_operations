String removeDuplicates(String s) {
  Map<String, bool> seen = {};
  String result = "";

  for (int i = 0; i < s.length; i++) {
    String currentChar = s[i];
    if (!seen.containsKey(currentChar)) {
      seen[currentChar] = true;
      result += currentChar;
    }
  }

  return result;
}

void main() {
  String input = "ppproogramming";
  print(removeDuplicates(input)); // Output: "progamin"
}
