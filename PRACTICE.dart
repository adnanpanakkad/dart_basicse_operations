void main() {
  List<String> fruits = [
    'Apple',
    'Banana',
    'Orange',
    'Mango',
    'Strawberry',
    'Blueberry',
    'Pineapple',
    'Grapes',
    'Kiwi',
    'Watermelon'
  ];

  List<String> result = findFruitsWithRepeatingAlphabets(fruits);
  print(
      result); // [Apple, Banana, Strawberry, Blueberry, Pineapple, Kiwi, Watermelon]
}

List<String> findFruitsWithRepeatingAlphabets(List<String> fruits) {
  List<String> store = [];

  for (int i = 0; i < fruits.length; i++) {
    List<String> fruit = fruits[i].split('').toList();
    bool val = true;
    for (int i = 0; i < fruit.length; i++) {
      for (int j = 0; j < fruit.length; j++) {
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
