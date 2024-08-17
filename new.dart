class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class LinkidList {
  Node? head;
  Node? tail;
  void adddata(int data) {
    Node newnode = Node(data);
    if (head == null) {
      head = newnode;
    } else {
      tail!.next = newnode;
    }
    tail = newnode;
  }
  printlist(){
    
  }
}
