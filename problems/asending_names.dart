void main() {
  List<String> names = ['Adnan', 'Rasha', 'Maya', 'Haneen','salman'];

  // Sort in descending order
  names.sort((a, b) => a.compareTo(b));

  print(names);
}
