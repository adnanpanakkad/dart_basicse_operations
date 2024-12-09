void main() {
  List<Map<String, dynamic>> list = [
    {
      'id': 1,
      'name': 'adnan',
    },
    {
      'id': 2,
      'name': 'basil',
    },
    {
      'id': 3,
      'name': 'cat',
    },
  ];
  List<Map<String, dynamic>> result = list.map((items) {
    return {'id': items['id']};
  }).toList();
  print(result);
}
