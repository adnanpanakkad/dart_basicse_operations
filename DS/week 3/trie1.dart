class Node {
  Map<String, Node> children = {};
  bool isend = false;
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
      node = node.children[char];
    }
    node!.isend = true;
  }


  search(String string) {
    Node node = root;
    for (int i = 0; i < string.length; i++) {
      if (!node.children.containsKey(string[i])) {
        return false;
      }
      node = node.children[string[i]]!;
    }
    return node.isend;
  }

  //prefix search
  prefixSearchHelper(String prefix) {
    List<String> result = [];
    Node node = root;
    for (int i = 0; i < prefix.length; i++) {
      if (node.children.length == 0) {
        print('no words with that prefix');
        return;
      }
      if (node.children.containsKey(prefix[i]))
        node = node.children[prefix[i]]!;
      else
        return;
    }
    if (node.isend) result.add(prefix);
    prefixsearch(result, prefix, node);
    print(result);
  }

  prefixsearch(List result, String string, Node node) {
    node.children.forEach((key, node1) {
      string += key;
      if (node1.isend) {
        result.add(string);
      }

      prefixsearch(result, string, node1);
    });
  }

  void deletehelper(String string) {
    if (search(string)) delete(root, string, 0);
  }
  

  delete(Node node, String string, int pos) {
    Node lastnode = root;
    String flag = string[0];
    for (int i = 0; i < string.length; i++) {
      node = node.children[string[i]]!;
      if (node.isend && i < string.length) {
        flag = string[i];
        lastnode = node;
        if (i == string.length - 1) {
          node.isend = false;
        }
      }
    }
    lastnode.children.remove(flag);
  }
}
void main() {
  var trie = Trie();
  trie.insert("hello");
  trie.insert("world");

  print(trie.search("hello")); // Output: true
  print(trie.search("world")); // Output: true
  print(trie.search("hi")); // Output: false
  print(trie.search("he")); // Output: false
}