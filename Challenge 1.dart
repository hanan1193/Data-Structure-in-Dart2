void main(){
  List<int> originalList = [10, 20, 30, 40, 50];
  List<int> reversedList = reverseListUsingStack(originalList);

  print('Original List: $originalList');
  print('Reversed List: $reversedList');
}

List<T> reverseListUsingStack<T>(List<T> list) {
  Stack<T> stack = Stack<T>();

  // Push elements from the list onto the stack
  list.forEach((element) {
    stack.push(element);
  });

  List<T> reversedList = [];

  // Pop elements from the stack to create the reversed list
  while (!stack.isEmpty()) {
    reversedList.add(stack.pop());
  }

  return reversedList;
}

class Stack<T> {
  List<T> _stack = [];

  void push(T element) {
    _stack.add(element);
  }

  T pop() {
    if (isEmpty()) {
      throw StateError('Stack is empty');
    }
    return _stack.removeLast();
  }

  bool isEmpty() {
    return _stack.isEmpty;
  }
}
