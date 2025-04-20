class ListQueue<T> {
  final List<T> _queue = [];
  int _front = 0;
  int _rear = -1;

  void enqueue(T data) {
    _queue.add(data);
    _rear += 1;
  }

  T? dequeue() {
    if (_front <= _rear) {
      _front += 1;
      return _queue[_front - 1];
    }
    return null;
  }

  T? front() {
    if (_front <= _rear) {
      return _queue[_front];
    }
    return null;
  }

  bool isEmpty() {
    return _front > _rear;
  }

  int size() {
    int difference = _rear - _front;
    return difference >= 0 ? difference + 1 : 0;
  }

  void clear() {
    _queue.clear();
    _front = 0;
    _rear = -1;
    /*
    int difference = _rear - _front;
    if (difference >= 0) {
      _front += difference;
    }*/
  }
}
