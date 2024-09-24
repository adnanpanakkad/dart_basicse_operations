Future<void> fetchData() async {
  return Future.delayed(Duration(seconds: 2), () {
    print('Data fetched');
    // Uncomment the line below to simulate an error
    // throw 'An error occurred';
  });
}

void main() {
  fetchData().whenComplete(() {
    print(
        'Fetch operation completed'); // Runs after the Future completes, regardless of success or failure
  });

  print('Fetching data...');
}
