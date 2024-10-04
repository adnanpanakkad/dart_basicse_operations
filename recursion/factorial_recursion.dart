int factorial(int n) {
  if (n <= 1) {
    return n;
  } else {                
    return n * factorial(n - 1);
  }
}

void main() {
  int num = 5; 
  int result = factorial(num);

  print('The factorial of $num is: $result');
}
