class Node {
  String? data;
  Node? next;
  Node? prev;
  Node(this.data);
}

class DoublyLinkedList {
  Node? head;
  Node? tail;

  void addValue(String data) {
    for (int i = 0; i < data.length; i++) {
      Node newNode = Node(data[i]);
      if (head == null) {
        head = newNode;
      } else {
        tail?.next = newNode;
        newNode.prev = tail;
      }
      tail = newNode;
    }
  }

  String reverseString() {
    var curr = tail;
    StringBuffer reversedString = StringBuffer();
    while (curr != null) {
      reversedString.write(curr.data);
      curr = curr.prev;
    }
    return reversedString.toString();
  }
}

void main() {
  DoublyLinkedList list = DoublyLinkedList();
  list.addValue('hello everyone');
  
  print("Reversed String:");
  print(list.reverseString());
}
