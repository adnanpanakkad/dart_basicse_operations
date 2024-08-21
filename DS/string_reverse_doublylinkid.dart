class Node {
  String? data;
  Node? next;
  Node? prev;

  Node(this.data);
}

class SLinkedList {
  Node? head;
  Node? tail;

  insert(String data) {
    Node? newnode = Node(data);
    if (head == null) {
      head = tail = newnode;
    } else {
      tail!.next = newnode;
      newnode.prev = tail;
    }
      tail = newnode;
  }

  reverse() {
    var curr = tail;
    String str = "";
    while (curr != null) {
      str += curr.data.toString();
      curr = curr.prev;
    }
    return str;
  }

  display() {
    var curr = head;
    while (curr != null) {
      print(curr.data);
      curr = curr.next;
    }
  }
}

void main() {
  String str = "ADNAN";
  SLinkedList sll = SLinkedList();

  for (var i = 0; i < str.length; i++) {
    sll.insert(str[i]);
  }

  print("reversed");
  print(sll.reverse());
}
