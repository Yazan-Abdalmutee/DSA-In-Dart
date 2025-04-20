class Node<T> {
  T data;
  Node<T>? next;
  Node(this.data);
}

class LinkedQueue<T> {
  Node<T>? _front;
  Node<T>? _rear;
  int _size = 0;

  void enqueue(T data) {
    Node<T> newNode = Node(data);
    if (_front == null) {
      _front = newNode;
      _rear = _front;
      _size += 1;
      return;
    }
    _rear!.next = newNode;
    _rear = _rear!.next;
    _size += 1;
  }

  T? dequeue() {
    if (_front == null) {
      return null;
    }
    T removedValue = _front!.data;
    _size -= 1;
    if (_front == _rear) {
      _front = null;
      _rear = null;
      return removedValue;
    }
    _front = _front!.next;
    return removedValue;
  }

  T? front() {
    if (_front != null) {
      return _front!.data;
    }
    return null;
  }

  bool isEmpty() {
    return _front == null;
  }

  int size() {
    return _size;
  }

  void clear() {
    while (!isEmpty()) {
      dequeue();
    }
  }
}
