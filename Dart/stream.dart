Stream<int> countStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i; // Emits value one by one
  }
}

void main() {
  countStream().listen((value) {
    print(value); // prints 1,2,3,4,5
  });
}
