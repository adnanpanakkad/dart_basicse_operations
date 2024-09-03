class Node {
  Map<String, Node> children = {};
  bool isWord = false;
}

class Trie {
  Node root = Node();
  insert(String word) {
    Node? node = root;
    for (int i = 0; i < word.length; i++) {
      //var char = word[i];
      if (!node!.children.containsKey(word[i])) {
        node.children[word[i]] = Node();
      }
      node = node.children[word[i]];
    }
    node!.isWord = true;
  }

  search(String str) {
    Node node = root;
    for (int i = 0; i < str.length; i++) {
      if (!node.children.containsKey(str[i])) {
        return false;
      }
      node = node.children[str[i]]!;
    }
    return node.isWord;
  }
}

void main() {
  Trie tri = Trie();
  tri.insert('hello');
  print(tri.search("hello"));
}
