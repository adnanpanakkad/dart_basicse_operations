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


void fromArray(List<int> array) {
    for (int value in array) {
      addValue(value);
    }
  }
}

void main() {
  LinkidList list = LinkidList();
  List<int> array = [10, 20, 30, 40, 50];
  list.fromArray(array);
  list.printList();
}
