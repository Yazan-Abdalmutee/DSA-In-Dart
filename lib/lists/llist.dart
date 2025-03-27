class Node<T> {
  T data;
  Node<T>? next;

  Node(this.data, {this.next});
}

class LinkedList<T> {
  Node<T>? head;
  Node<T>? tail;
  int _length = 0;

  int get length => _length;

  void add(T value) {
    Node<T> newNode = Node(value);
    _length++;

    if (head == null) {
      head = newNode;
      tail = head;
    } else {
      tail!.next = newNode;
      tail = newNode;
    }
  }

  void insert(int index, T value) {
    if (index < 0 || index > _length) {
      print('Index Out Of Range');
      return;
    }

    Node<T> newNode = Node(value);

    if (index == 0) {
      newNode.next = head;
      head = newNode;
      if (_length == 0) {
        tail = newNode;
      }
      _length++;
      return;
    }

    Node<T>? current = head;
    int counter = 0;

    while (counter + 1 != index && current != null) {
      current = current.next;
      counter++;
    }

    if (current != null) {
      newNode.next = current.next;
      current.next = newNode;

      if (newNode.next == null) {
        tail = newNode;
      }

      _length++;
    }
  }

  T? removeAt(int index) {
    if (index > length - 1 || index < 0) {
      print('Index Out Of Range');
      return null;
    }

    if (index == 0) {
      T removedValue = head!.data;
      head = head!.next;
      if (_length == 1) {
        tail = head;
      }
      _length--;
      return removedValue;
    }

    Node<T>? current = head;
    int counter = 0;

    while (counter + 1 != index && current != null) {
      current = current.next;
      counter++;
    }

    T value = current!.next!.data;
    current.next = current.next!.next;

    if (current.next == null) {
      tail = current;
    }
    _length--;

    return value;
  }

  bool contains(T value) {
    Node<T>? current = head;

    while (current != null) {
      if (current.data == value) {
        return true;
      }
      current = current.next;
    }

    return false;
  }

  int indexOf(T value) {
    Node<T>? current = head;
    int index = 0;

    while (current != null) {
      if (current.data == value) {
        return index;
      }
      index++;
      current = current.next;
    }

    return -1;
  }

  void clear() {
    head = null;
    tail = null;
    _length = 0;
  }

  T? operator [](int index) {
    if (index >= length || index < 0) {
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

  void operator []=(int index, T value) {
    if (index >= length || index < 0) {
      print('Index Out Of Range');
    }

    Node<T>? current = head;
    int counter = 0;

    while (current != null) {
      if (counter == index) {
        current.data = value;
        break;
      }
      current = current.next;
      counter++;
    }
  }

  LinkedList<T> operator +(LinkedList<T> other) {
    LinkedList<T> newLinkedList = LinkedList<T>();
    Node<T>? current = head;

    while (current != null) {
      newLinkedList.add(current.data);
      current = current.next;
    }

    current = other.head;

    while (current != null) {
      newLinkedList.add(current.data);
      current = current.next;
    }

    return newLinkedList;
  }

  LinkedList<T> operator -(T value) {
    LinkedList<T> newLinkedList = LinkedList<T>();
    Node<T>? current = head;
    bool isRemoved = false;

    while (current != null) {
      if (current.data == value && !isRemoved) {
        isRemoved = true;
      } else {
        newLinkedList.add(current.data);
      }
      current = current.next;
    }

    return newLinkedList;
  }

  void forEach(void Function(T) action) {
    Node<T>? current = head;

    while (current != null) {
      action(current.data);
      current = current.next;
    }
  }

  LinkedList<S> map<S>(S Function(T) transform) {
    LinkedList<S> newLinkedList = LinkedList<S>();
    Node<T>? current = head;

    while (current != null) {
      Node<S> newNode = Node(transform(current.data));
      newLinkedList.add(newNode.data);
      current = current.next;
    }

    return newLinkedList;
  }

  LinkedList<T> where(bool Function(T) test) {
    LinkedList<T> newLinkedList = LinkedList<T>();
    Node<T>? current = head;

    while (current != null) {
      if (test(current.data)) {
        newLinkedList.add(current.data);
      }
      current = current.next;
    }

    return newLinkedList;
  }

  @override
  String toString() {
    List<String> elements = [];
    Node<T>? current = head;

    while (current != null) {
      elements.add(current.data.toString());
      current = current.next;
    }

    return 'LinkedList: [${elements.join(', ')}]';
  }
}
