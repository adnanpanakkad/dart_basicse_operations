int fibinacci(int n) {
  if (n <=1 ) {
    return n;
  }
  return fibinacci(n - 1) + fibinacci(n - 2);
}

void main() {
  int count = 10;
  print('fibinacci series');
  for (int i = 0; i < count; i++) {
    print(fibinacci(i));
  }
}
