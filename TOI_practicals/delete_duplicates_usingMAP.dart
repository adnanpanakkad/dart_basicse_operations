String removeDuplicates(String s) {
  Map<String, bool> arr = {};
  String result = "";

  for (int i = 0; i < s.length; i++) {
    String currentChar = s[i];
    if (!arr.containsKey(currentChar)) {
      arr[currentChar] = true;
      result += currentChar;
    }
  }

  return result;
}

void main() {
  String input = "ppproogramming";
  print(removeDuplicates(input));
}
