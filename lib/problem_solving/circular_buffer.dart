
/*

Still need to update ..........................

*/

class CircularBuffer<T> {
  CircularBuffer({required this.capacity}) {
    buffer = List<T?>.filled(capacity, null);
  }
  late List<T?> buffer;
  int capacity;
  int _read = 0;
  int _write = 0;

  int totalCapacity() {
    return capacity;
  }

  void add(T value) {
    buffer[_write] = value;
    if (_write == _read) {
      _read++;
      if (_read >= capacity) _read = 0;
    }
    _write++;

    if (_write >= capacity) {
      _write = 0;
    }
  }

  T? get() {
    if (buffer[_read] != null) {
      T? returnValue = buffer[_read];
      buffer[_read] = null;
      _read++;
      if (_read >= capacity) _read = 0;
      return returnValue;
    }
    return null;
  }

  List<T> toList() {
    List<T> values = [];
    T? returnedValue = buffer[_read];
    int tempRead = _read;

    while (true) {
      if (returnedValue != null) {
        values.add(returnedValue);
        tempRead++;
        if (tempRead >= capacity) tempRead = 0;
        returnedValue = buffer[tempRead];
        if (tempRead == _read) break;
      } else {
        tempRead++;
        if (tempRead >= capacity) tempRead = 0;

        returnedValue = buffer[tempRead];
        if (tempRead == _read) break;
      }
    }
    return values;
  }

  bool isEmpty() {
    if (buffer[_read] == null) return true;
    return false;
  }

  bool isFull() {
    if (buffer[_write] != null) {
      return true;
    }
    return false;
  }

  void clearBuffer() {
    buffer = List.filled(capacity, null);
  }

  T? peek() {
    if (!isEmpty()){
    return buffer[_read];

    }
  }
}
