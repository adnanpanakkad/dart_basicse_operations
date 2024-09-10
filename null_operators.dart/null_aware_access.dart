class Person {
  String? name ='sdfg';
}

void main() {
  Person? person = null;
  // Using ?. to safely access the name property
  print(person?.name); // Output: null
}
