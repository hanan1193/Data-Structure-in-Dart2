class Node {
  int data=0;
  Node? next;

  Node(int data) {
    this.data = data;
    next = null;
  }
}

Node? push(Node? head, int newData) {
  Node newNode = Node(newData);
  newNode.next = head;
  head = newNode;
  return head;
}

Node? deleteKey(Node? head, int x) {
  if (head == null) return head;

  while (head != null && head.data == x) {
    head = head.next;
  }

  Node? curr = head;
  Node? prev;

  while (curr != null) {
    if (curr.data == x) {
      if (prev != null) {
        prev.next = curr.next;
      }
    } else {
      prev = curr;
    }
    curr = curr.next;
  }

  return head;
}

void printList(Node? node) {
  while (node != null) {
    print('${node.data} ');
    node = node.next;
  }
}

void main() {
  Node? head;
  head = push(head, 7);
  head = push(head, 2);
  head = push(head, 3);
  head = push(head, 2);
  head = push(head, 8);
  head = push(head, 1);
  head = push(head, 2);
  head = push(head, 2);

  int key = 2;
  print('Created Linked List:\n');
  printList(head);
  head = deleteKey(head, key);

  if (head == null) {
    print("\nNo element present in the Linked list");
  } else {
    print("\nLinked List after Deletion is:\n");
    printList(head);
  }
}