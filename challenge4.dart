class ListNode {
  int val;
  ListNode? next;

  ListNode(this.val, [this.next]);
}

ListNode? findMiddleNode(ListNode? head) {
  if (head == null || head.next == null) {
    return head;
  }

  ListNode? slow = head;
  ListNode? fast = head;

  while (fast != null && fast.next != null) {
    slow = slow!.next;
    fast = fast.next!.next;
  }

  return slow;
}

void main() {
  // Creating a sample linked list
  ListNode node5 = ListNode(5);
  ListNode node4 = ListNode(4, node5);
  ListNode node3 = ListNode(3, node4);
  ListNode node2 = ListNode(2, node3);
  ListNode node1 = ListNode(1, node2);
 

  ListNode? middleNode = findMiddleNode(node1);
  print('Middle Node: ${middleNode!.val}');
}