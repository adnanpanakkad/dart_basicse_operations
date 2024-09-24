void main() {
  int n = 10; // Change this value to find primes up to a different limit

  for (int i = 2; i <= n; i++) {
    int j;
    // Check divisibility
    for (j = 2; j < i; j++) {
      if (i % j == 0) {
        break; // If divisible, break the loop
      }
    }

    // If the loop completes without breaking, j will equal i
    if (j == i) {
      print(i); // i is a prime number
    }
  }
}
