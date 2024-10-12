bool isprime(int num, int divs) {
  if (num <= 1) {
    return false;
  }
  if (divs == 1) {
    return true;
  }
  if (num % divs == 0) {
    return false;
  }
  return isprime(num, divs - 1);
}

void main() {
  int num = 11;
  bool result = isprime(num, num ~/ 2);
  print(result);
}
