void main() {
  var myNumber = 42;
  var myString = 'Hello, Dart!';
  
  if (myNumber is int) {
    print('myNumber is an int');
  }
  
  if (myString is String) {
    print('myString is a String');
  }
  
  // Checking if a variable is of a certain type, and also casting
  if (myNumber is int) {
    int number = myNumber as int; // Safe to cast
    print('Number is $number');
  }
}
