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

  void deleteNode(int data) {
    if (head == null) {
      print("List is empty");
      return;
    }

    Node? curr = head;

    // Case 1: Node to be deleted is the head node
    if (curr != null && curr.data == data) {
      head = curr.next; // Move head to the next node
      if (head != null) {
        head?.prev = null; // Set the previous pointer of the new head to null
      } else {
        tail = null; // If the list becomes empty, set tail to null
      }
      return;
    }

    // Search for the node to be deleted
    while (curr != null && curr.data != data) {
      curr = curr.next;
    }

    // Case 2: Node not found in the list
    if (curr == null) {
      print("Node with value $data not found in the list.");
      return;
    }

    // Case 3: Node to be deleted is the tail node
    if (curr == tail) {
      tail = curr.prev; // Move tail to the previous node
      tail?.next = null; // Set the next pointer of the new tail to null
      return;
    }

    // Case 4: Node to be deleted is in the middle
    curr.prev?.next = curr.next;
    curr.next?.prev = curr.prev;
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
