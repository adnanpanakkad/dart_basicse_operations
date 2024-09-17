bool isPrime(int num, int div) {
  if (num <= 1) {
    return false;
  }
  if (div == 1) {
    return true;
  }
  if (num % div == 0) {
    return false;
  }
  return isPrime(num, div - 1);
}

void main() {
  int num = 17;
  bool result = isPrime(num, num ~/ 2);
  print(result);
}
