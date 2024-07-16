bool isPrime(int number, int divisor) {
  if (number <= 1) {
    return false;
  }
  if (divisor == 1) {
    return true;
  }
  if (number % divisor == 0) {
    return false;
  }
  return isPrime(number, divisor - 1);
}

void main() {
  int num = 17; 
  bool result = isPrime(num, num ~/ 2);
  
  if (result) {
    print('$num is a prime number.');
  } else {
    print('$num is not a prime number.');
  }
}
