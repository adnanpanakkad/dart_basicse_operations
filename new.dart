class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class LinkidList {
  Node? head;
  Node? tail;
  void addvalue(int data) {
    Node newnode = Node(data);
    if (head == null) {
      head = newnode;
    } else {
      tail?.next = newnode;
    }
    tail = newnode;
  }

  void printlist() {
    var curr = head;
    while (curr != null) {
      print(curr.data);
      curr = curr.next;
    }
  }
}

void main() {
  var list = LinkidList();
  list.addvalue(10);
  list.addvalue(20);
  list.addvalue(30);
  list.printlist();
}
