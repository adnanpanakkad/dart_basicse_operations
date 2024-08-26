Future<int> fetchNumber() async {
  return Future.delayed(Duration(seconds: 2), () => 42);
}

void main() {
  fetchNumber().whenComplete(() {
    print('Done fetching!');
  });

  print('Waiting for the number...');
}
