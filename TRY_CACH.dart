void main() {
  try {
    // Code that might throw an exception
    int result = 10 ~/ 0; // This will throw an IntegerDivisionByZeroException
    print('Result: $result');
  } catch (e) {
    // Code that runs if an exception occurs
    print('An error occurred: $e');
  } finally {
    // Code that always runs, regardless of whether an exception occurred
    print('Execution completed.');
  }
}
