void main() {
  int a = 10;
  int b = 25;

  a = a + b;  // a now becomes 35
  b = a - b;  // b now becomes 10
  a = a - b;  // a now becomes 25

  print("a: $a, b: $b");
}
