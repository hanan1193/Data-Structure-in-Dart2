class Node {
  int data=0;
  Node? next;

  Node(int data) {
    this.data = data;
    next = null;
  }
}

class LinkedList {
  Node? head;

  LinkedList() {
    head = null;
  }

  void reverse() {
    Node? current = head;
    Node? prev = null;
    Node? nextNode = null;

    while (current != null) {
      nextNode = current.next;
      current.next = prev;
      prev = current;
      current = nextNode;
    }
    head = prev;
  }

  void printList() {
    Node? temp = head;
    while (temp != null) {
      print('${temp.data} ');
      temp = temp.next;
    }
  }

  void push(int data) {
    Node newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }
}

void main() {
  LinkedList ll = LinkedList();
  ll.push(20);
  ll.push(4);
  ll.push(15);
  ll.push(85);

  print('Given linked list');
  ll.printList();

  ll.reverse();

  print('\nReversed linked list');
  ll.printList();
}