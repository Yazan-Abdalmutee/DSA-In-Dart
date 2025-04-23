class Node<T> {
  T data;
  Node<T>? next;

  Node(this.data, {this.next});
}

class CicularLinkedList<T> {
  Node<T>? head;
  Node<T>? tail;
  int _length = 0;

  void insertAtEnd(T value) {
    Node<T> newNode = Node(value);
    _length++;
    if (head == null) {
      head = newNode;
      tail = head;
      tail!.next = head;
    } else {
      tail!.next = newNode;
      tail = newNode;
      tail!.next = head;
    }
  }

  bool delete(T data) {
    bool isDeleted = false;
    while (head != null && head!.data == data) {
      _length--;
      isDeleted = true;
      head = head!.next;
      if (head == null) {
        tail = null;
      } else {
        tail!.next = head;
      }
    }
    Node<T>? current = head;
    while (current != null) {
      if (current.next != null && current.next!.data == data) {
        _length--;
        isDeleted = true;
        if (current.next == tail) {
          tail = current;
          current.next = head;
        } else {
          current.next = current.next!.next;
        }
      } else {
        current = current.next;
      }
      if (current == tail) {
        break;
      }
    }
    return isDeleted;
  }

  bool contains(T value) {
    Node<T>? current = head;

    while (current != null) {
      if (current.data == value) {
        return true;
      }
      current = current.next;
      if (current == head) {
        break;
      }
    }

    return false;
  }

  T? getAt(int index) {
    Node<T>? current = head;
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
      if (current == head) break;
    }
    return null;
  }

  T? operator [](int index) {
    if (index >= _length || index < 0) {
      print('Index Out Of Range');
      return null;
    }

    Node<T>? current = head;
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

  void printList() {
    Node<T>? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
      if (current == head) {
        break;
      }
    }
  }

  int length() => _length;
}
