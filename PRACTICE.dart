
void main() {
  try {
    // Code that may throw an exception
    int result = 10 ~/ 0; // This will throw an exception
    print(result);
  } finally {
    // This code will execute regardless of whether an exception occurred
    print('This will always execute.');
  }
}
