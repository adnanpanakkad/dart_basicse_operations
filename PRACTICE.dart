class Node {
  Map<String, Node> children = {};
  bool isword = false;
}

class Trie {
  Node root = Node();
  insert(String word) {
    Node? node = root;
    for (int i = 0; i < word.length; i++) {
      var char = word[i];
      if (!node!.children.containsKey(char)) {
        node.children[char] = Node();
      }
      node = node.children[char]!;
    }
    node!.isword = true;
  }

  search(String str) {
    Node node = root;
    for (int i = 0; i < str.length; i++) {
      if (!node.children.containsKey(str[i])) {
        return false;
      }
      node = node.children[str[i]]!;
    }
    return node.isword;
  }
}

void main() {
  Trie trie = Trie();
  trie.insert('word');
  print(trie.search('word'));
}
