List<String> findFruitsWithRepeatingSubstrings(List<String> fruits) {
  List<String> store = [];
  for (int i = 0; i < fruits.length; i++) {
    List<String> fruit = fruits[i].split('').toList();
    bool val = true;
    for (int i = 0; i < fruit.length - 1; i++) {
      for (int j = 0; j < fruit.length - 1; j++) {
        if (i != j && fruit[i] == fruit[j]) {
          val = false;
        }
      }
    }
    if (val == false) {
      store.add(fruits[i]);
    }
  }
  return store;
}

void main() {
  List<String> fruits = [
    'apple',
    'banana',
    'cherry',
    'date',
    'elderberry',
    'fig',
    'grape',
    'honeydew',
    'kiwi',
    'lemon',
    'mango',
    'nectarine',
    'orange',
    'papaya',
    'pineapple',
    'quince',
    'raspberry',
    'strawberry',
    'tangerine',
    'watermelon'
  ];

  List result = findFruitsWithRepeatingSubstrings(fruits);
  print(result);
}
