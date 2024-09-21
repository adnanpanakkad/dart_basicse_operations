bool isvalid(String s) {
  List arr = [];
  Map<String, String> brackets = {
    ')': '(',
    ']': '[',
    '}': '{',
  };

  for (int i = 0; i < s.length; i++) {
    var char = s[i];
    if (brackets.containsValue(char)) {
      arr.add(char);
    } else if (brackets.containsKey(char)) {
      if (arr.isEmpty || arr.last != brackets[char]) {
        return false;
      }
      arr.removeLast();
    }
  }
  return arr.isEmpty;
}

void main() {
  String s = '{}';
  print(isvalid(s));
}
