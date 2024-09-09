void main() {
  try {
    int result = 10 ~/ 0;
    print('result:$result');
  } catch (e) {
    print('somthing wrong :$e');
  } finally {
    print('execution complete');
  }
}
