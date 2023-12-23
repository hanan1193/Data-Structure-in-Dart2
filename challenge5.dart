class ListNode {
  int val;
  ListNode? next;

  ListNode(this.val, [this.next]);
}

ListNode? reverseLinkedList(ListNode? head) {
  ListNode? prev = null;
  ListNode? current = head;
  ListNode? nextNode;

  while (current != null) {
    nextNode = current.next; // Store the next node temporarily
    current.next = prev; // Reverse the link

    // Move prev and current pointers one step forward
    prev = current;
    current = nextNode;
  }
  
  // 'prev' will be the new head after reversing
  return prev;
}

void printList(ListNode? head) {
  while (head != null) {
    print('${head.val} ');
    head = head.next;
  }
}

void main() {
  // Creating a sample linked list
  ListNode node5 = ListNode(5);
  ListNode node4 = ListNode(4, node5);
  ListNode node3 = ListNode(3, node4);
  ListNode node2 = ListNode(2, node3);
  ListNode node1 = ListNode(1, node2);

  print('Original List:');
  printList(node1);

  ListNode? reversedList = reverseLinkedList(node1);
  
  print('\nReversed List:');
  printList(reversedList);
}