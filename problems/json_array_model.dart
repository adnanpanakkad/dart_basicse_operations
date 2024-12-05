void main() {
  List<Map<String, dynamic>> list = [
    {
      'id': 1,
      'name': 'test1',
    },
    {
      'id': 2,
      'name': 'test2',
    },
    {
      'id': 3,
      'name': 'test3',
    }
  ];

  List<Map<String, dynamic>> result = list.map((item) {
    return {'id': item['id']};
  }).toList();

  print(result);
}
