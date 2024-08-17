class Node {
  int? data;
  Node? next;
  Node? prev;
  Node(this.data);
}

class DoublyLinkedList {
  Node? head;
  Node? tail;

  void addValue(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  void printList() {
    var curr = head;
    while (curr != null) {
      print(curr.data);
      curr = curr.next;
    }
  }

  void printReverseList() {
    var curr = tail;
    while (curr != null) {
      print(curr.data);
      curr = curr.prev;
    }
  }
}

void main() {
  DoublyLinkedList list = DoublyLinkedList();
  list.addValue(10);
  list.addValue(20);
  list.addValue(30);

  print("Forward:");
  list.printList();

  print("Reverse:");
  list.printReverseList();
}
