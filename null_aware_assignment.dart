void main() {
  String? name;

  // Using ??= to assign a value only if the variable is null
  name ??= 'Guest';
  print(name); // Output: Guest
}
