int factorial(int n) {
  if (n <= 1) {
    return n;
  } else {
    return n * factorial(n - 1);
  }
}

void main() {
  int num = 4; // You can change this to any non-negative integer
  int result = factorial(num);

  print('The factorial of $num is: $result');
}
