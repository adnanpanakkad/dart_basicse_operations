class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class LinkidList {
  Node? head;
  Node? tail;
  void addValue(int data) {
    Node newnode = Node(data);
    if (head == null) {
      head = newnode;
    } else {
      tail?.next = newnode;
    }
    tail = newnode;
  }

  void printList() {
    var curr = head;
    while (curr != null) {
      print(curr.data);
      curr = curr.next;
    }
  }
}

void main() {
  LinkidList list = LinkidList();
  list.addValue(10);
  list.addValue(20);
  list.addValue(30);
  list.printList();
}
