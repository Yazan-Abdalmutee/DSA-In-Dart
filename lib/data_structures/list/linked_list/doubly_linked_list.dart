class DoublyNode<T> {
  T data;
  DoublyNode<T>? next;
  DoublyNode<T>? prev;
  DoublyNode(this.data);
}

class DoublyLinkedList<T> {
  DoublyNode<T>? head;
  DoublyNode<T>? tail;

  int _length = 0;

  void insertAtHead(T value) {
    DoublyNode<T> newDoublyNode = DoublyNode<T>(value);
    _length++;
    newDoublyNode.next = head;
    if (head == null) {
      head = newDoublyNode;
      tail = head;
    } else {
      head!.prev = newDoublyNode;
      head = newDoublyNode;
    }
  }

  void insertAtTail(T value) {
    DoublyNode<T> newDoublyNode = DoublyNode<T>(value);
    _length++;

    if (head == null) {
      head = newDoublyNode;
      tail = head;
    } else {
      tail!.next = newDoublyNode;
      newDoublyNode.prev = tail;
      tail = newDoublyNode;
    }
  }

  bool insertAt(int index, T value) {
    if (index < 0 || index > _length) {
      print('Index Out Of Range');
      return false;
    }

    DoublyNode<T> newDoublyNode = DoublyNode<T>(value);

    if (index == 0) {
      insertAtHead(value);
      return true;
    }
    if (index == _length) {
      insertAtTail(value);
      return true;
    }

    DoublyNode<T>? current = head;
    int counter = 0;

    while (counter + 1 != index && current != null) {
      current = current.next;
      counter++;
    }

    if (current != null) {
      newDoublyNode.next = current.next;
      if (current.next != null) {
        current.next!.prev = newDoublyNode;
      }
      current.next = newDoublyNode;
      newDoublyNode.prev = current;

      if (newDoublyNode.next == null) {
        tail = newDoublyNode;
      }

      _length++;
    }
    return true;
  }

  bool delete(T data) {
    bool isDeleted = false;
    while (head != null && head!.data == data) {
      _length--;
      isDeleted = true;
      head = head!.next;
      if (head != null) {
        head!.prev = null;
      } else {
        tail = null;
      }
    }
    DoublyNode<T>? current = head;
    while (current != null) {
      if (current.data == data) {
        _length--;
        isDeleted = true;
        current.prev!.next = current.next;
        if (current.next != null) {
          current.next!.prev = current.prev;
        }
        if (current.next == null) {
          tail = current.prev;
        }
      }
      current = current.next;
    }
    return isDeleted;
  }

  T? getAt(int index) {
    DoublyNode<T>? current = head;
    if (index < 0 || index >= _length) {
      return null;
    }
    int counter = 0;
    while (current != null) {
      if (counter == index) {
        return current.data;
      }
      counter += 1;
      current = current.next;
    }
    return null;
  }

  bool contains(T data) {
    DoublyNode<T>? current = head;
    while (current != null) {
      if (current.data == data) {
        return true;
      }
      current = current.next;
    }
    return false;
  }

  void printForward() {
    DoublyNode<T>? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void printBackward() {
    DoublyNode<T>? current = tail;
    while (current != null) {
      print(current.data);
      current = current.prev;
    }
  }

  T? operator [](int index) {
    if (index >= _length || index < 0) {
      print('Index Out Of Range');
      return null;
    }

    DoublyNode<T>? current = head;
    int counter = 0;

    while (current != null) {
      if (counter == index) {
        return current.data;
      }
      current = current.next;
      counter++;
    }

    return null;
  }

  int length() => _length;
}
