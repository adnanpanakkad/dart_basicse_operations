bool isValid(String s) {
  List<String> stack = [];

  Map  Brackets = {
    ')': '(',
    ']': '[',
    '}': '{',
  };


  for (int i = 0; i < s.length; i++) {
    String char = s[i];

    if (Brackets.containsValue(char)) {
      stack.add(char);
    } else if (Brackets.containsKey(char)) {
      if (stack.isEmpty || stack.last != Brackets[char]) {
        return false;
      }
      stack.removeLast();
    }
  }

  return stack.isEmpty;
}

void main() {
  String s = '{[()]}';
  print(isValid(s));
}
