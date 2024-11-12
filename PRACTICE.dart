String reverse(String s) {
  if (s.length <= 1) {
    return s;
  }
  return reverse(s.substring(1)) + s[0];
}

void main() {
  String s = 'HELLO';
  String result = reverse(s);
  print(result);
}
