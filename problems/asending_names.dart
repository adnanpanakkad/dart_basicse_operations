void main() {
  List<String> names = ['Adnan', 'Rasha', 'Maya', 'Haneen','salman'];

  // Sort in descending order
  names.sort((a, b) => b.compareTo(a));

  print(names);
}
