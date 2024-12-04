Map<String, int> findCharOccurrences(String word) {
  Map<String, int> charCount = {};

  for (int i = 0; i < word.length; i++) {
    String char = word[i];
    if (charCount.containsKey(char)) {
      charCount[char] = charCount[char]! + 1;
    } else {
      charCount[char] = 1;
    }
  }

  return charCount;
}

void main() {
  String input = "programming";
  Map<String, int> occurrences = findCharOccurrences(input);
  occurrences.forEach((char, count) {
    print('$char: $count');
  });
}
