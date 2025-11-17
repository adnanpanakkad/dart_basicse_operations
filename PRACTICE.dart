int fibinacci(int n) {
  if (n <= 1) {
    return n;
  }
  return fibinacci(n - 1) + fibinacci(n - 2);
}

void main() {
  int num = 16;
  for (int i = 0; i < num; i++) {
    print(fibinacci(i));
  }
}
