Future<int> fetchNumber() async {
  return Future.delayed(Duration(seconds: 2), () => 42);
}

void main() {
  fetchNumber().then((number) {
    print('The number is $number');
  });

  print('Waiting for the number...');
}
