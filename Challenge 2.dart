void main() {
  String testString1 = "(())()"; // Balanced parentheses
  String testString2 = "(()("; // Unbalanced parentheses

  print("String 1: $testString1 => Balanced? ${checkBalancedParentheses(testString1)}");
  print("String 2: $testString2 => Balanced? ${checkBalancedParentheses(testString2)}");
}

bool checkBalancedParentheses(String input) {
  Stack<String> stack = Stack<String>();

  for (int i = 0; i < input.length; i++) {
    String character = input[i];

    if (character == '(') {
      stack.push(character);
    } else if (character == ')') {
      if (stack.isEmpty()) {
        return false; // Unbalanced if closing parentheses found without a corresponding opening parenthesis
      } else {
        stack.pop(); // Matched, remove corresponding opening parenthesis from the stack
      }
    }
  }

  return stack.isEmpty(); // If the stack is empty, parentheses are balanced
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