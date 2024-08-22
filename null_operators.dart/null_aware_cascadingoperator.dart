void main() {
  String? name = null;

  // Using ?? to provide a default value
  String displayName = name ?? 'Guest';
  print(displayName); // Output: Guest
}
