void main() {
  List<String> names = ['Adnan', 'Ram', 'Maya', 'Haneen','salman'];

  // Sort in descending order
  names.sort((a, b) => b.compareTo(a));

  print(names);
}
