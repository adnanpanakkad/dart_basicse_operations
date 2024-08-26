class Node {
  String? data;
  Node? next;
  Node? prev;
  Node(this.data);
}

class LinkidList {
  Node? head;
  Node? tail;
  addValue(String data) {
    Node newnode = Node(data);
    if (head == null) {
      head = newnode;
    } else {
      tail?.next = newnode;
      newnode.prev = tail;
    }
    tail = newnode;
  }

  printlist() {
    var curr = head;
    while (curr != null) {
      print(curr.data);
      curr = curr.next;
    }
  }

  reverlist() {
    String str = '';
    var curr = tail;
    while (curr != null) {
      str += curr.data.toString();
      curr = curr.prev;
    }
    return str;
  }
}

void main() {
  LinkidList list = LinkidList();
  String str = 'HELLO WORLD';
  for (var i = 0; i < str.length; i++) {
    list.addValue(str[i]);
  }
  list.printlist();
  print('reversed');
  print(list.reverlist());
}
