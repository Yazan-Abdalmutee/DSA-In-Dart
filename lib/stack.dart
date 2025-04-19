class Stack<T> {
  final List<T> _stack = [];

  void push(T data) {
    _stack.add(data);
  }

  T? pop() {
    if (!isEmpty()) {
      return _stack.removeLast();
    }
    return null;
  }

  T? peek() {
    if (!isEmpty()) {
      return _stack.last;
    }
    return null;
  }

  int size() {
    return _stack.length;
  }

  void clear() {
    _stack.clear();
  }

  bool isEmpty() {
    return _stack.isEmpty;
  }
}
