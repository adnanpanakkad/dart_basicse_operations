class User {
  String name = "adhil";
  int age = 20;
  String place = "palakkad";
}

void main() {
  User user = User()
    ..name
    ..place
    ..age;
  print(user.name);
  print(user.age);
  print(user.place);
}
