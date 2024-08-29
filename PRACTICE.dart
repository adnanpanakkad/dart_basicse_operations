Future<void> fechtdata() async {
  return Future.delayed(Duration(seconds: 2), () {});
}

void main() {
  fechtdata().whenComplete(() {
    print('object');
  });
}
