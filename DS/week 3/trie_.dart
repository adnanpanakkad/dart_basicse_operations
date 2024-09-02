class TrieNode {
  final Map<String, TrieNode> children = {};
  bool isEndOfWord = false;

  void insert(String word) {
    TrieNode currentNode = this;

    for (int i = 0; i < word.length; i++) {
      final char = word[i];
      if (!currentNode.children.containsKey(char)) {
        currentNode.children[char] = TrieNode();
      }
      currentNode = currentNode.children[char]!;
    }

    currentNode.isEndOfWord = true;
  }

  bool search(String word) {
    TrieNode? currentNode = this;

    for (int i = 0; i < word.length; i++) {
      final char = word[i];
      if (!currentNode!.children.containsKey(char)) {
        return false;
      }
      currentNode = currentNode.children[char];
    }

    return currentNode != null && currentNode.isEndOfWord;
  }
}

void main() {
  var trie = TrieNode();
  trie.insert("hello");
  trie.insert("world");

  print(trie.search("hello")); // Output: true
  print(trie.search("world")); // Output: true
  print(trie.search("hi")); // Output: false
  print(trie.search("he")); // Output: false
}