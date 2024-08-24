bool isEven(int number) {
  // Base cases
  if (number == 0) return true;   // Base case for even
  if (number == 1) return false;  // Base case for odd

  // Recursive case
  return isEven(number - 2);
}

void main() {
  int number = 10; // You can change this value to test with different numbers
  if (isEven(number)) {
    print('$number is even');
  } else {
    print('$number is odd');
  }
}
