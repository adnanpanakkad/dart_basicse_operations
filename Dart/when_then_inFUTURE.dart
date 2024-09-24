Future<int> addAndSum(int a, int b) async {
  return Future.delayed(Duration(seconds: 2), () {
    return a + b;
  });
}

void main() {
  addAndSum(3, 5).then((result) {
    print('Sum: $result');
  }).whenComplete(() {
    print('Addition operation completed.');
  });
}
