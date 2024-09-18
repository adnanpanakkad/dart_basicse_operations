int FUnction(int a, {required int b, int c = 10}) {
  return a + b + c;
}

void main() {
  print(FUnction(12, b: 2));
}
