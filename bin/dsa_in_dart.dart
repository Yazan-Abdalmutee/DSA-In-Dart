import 'package:dsa_in_dart/data_structures/list/linked_list/circular_linked_list.dart';
import 'package:dsa_in_dart/data_structures/list/linked_list/doubly_linked_list.dart';
import 'package:dsa_in_dart/data_structures/list/queue/linked_queue.dart';
import 'package:dsa_in_dart/data_structures/list/queue/list_queue.dart';
import 'package:dsa_in_dart/data_structures/list/stack/stack.dart';

void main() {
  //runQueueExample(useLinkedQueue: true); //false for using ListQueue
  //runStackExample();
  //runDoublyLinkedListExample();
  //runCircularLinkedListExample();
}

void runCircularLinkedListExample() {
  CicularLinkedList<int> cicularLinkedList = CicularLinkedList<int>();
  cicularLinkedList.insertAtEnd(1); // [1]
  cicularLinkedList.insertAtEnd(2); // [1, 2]
  cicularLinkedList.insertAtEnd(3); // [1, 2, 3]
  cicularLinkedList.delete(2); // [1, 3]
  cicularLinkedList.insertAtEnd(8); // [1, 3, 8]
  cicularLinkedList.insertAtEnd(7); // [1, 3, 8, 7]
  cicularLinkedList.delete(7); // [1, 3, 8]
  print('Value at index 1 is: ${cicularLinkedList.getAt(1)}');
  print('Length is: ${cicularLinkedList.length()}');
  print('Print Forward:');
  cicularLinkedList.printList();
}

void runDoublyLinkedListExample() {
  DoublyLinkedList<int> doublyLinkedList = DoublyLinkedList<int>();
  doublyLinkedList.insertAtHead(1); // [1]
  doublyLinkedList.insertAtTail(2); // [1, 2]
  doublyLinkedList.insertAt(2, 3); // [1, 2, 3]
  doublyLinkedList.delete(2); // [1, 3]
  doublyLinkedList.insertAt(0, 8); // [8, 1, 3]
  doublyLinkedList.insertAt(1, 7); // [8, 7, 1, 3]
  doublyLinkedList.delete(3); // [8, 7, 1]
  print('Value at index 1 is: ${doublyLinkedList.getAt(1)}');
  print('Length is: ${doublyLinkedList.length()}');
  print('Print Forward:');
  doublyLinkedList.printForward();
  print('Print Backward:');
  doublyLinkedList.printBackward();
}

void runQueueExample({required useLinkedQueue}) {
  var queue;
  if (useLinkedQueue) {
    queue = LinkedQueue<String>();
  } else {
    queue = ListQueue<String>();
  }

  queue.enqueue("Yazan");
  print('--Enqueue--');

  queue.enqueue("Shrouf");
  print('--Enqueue--');

  queue.enqueue("Ahmad");
  print('--Enqueue--');

  print('First Element is: ${queue.front()}');
  print('Size is: ${queue.size()}');

  print('--Dequeue--');
  queue.dequeue();

  print('First Element is: ${queue.front()}');
  print('Size is: ${queue.size()}');

  queue.clear();
  print('--Clear--');
  print('Size is: ${queue.size()}');
  print('Is Queue Empty?: ${queue.isEmpty()}');
  print('First Element is: ${queue.front()}');
}

void runStackExample() {
  Stack<String> stack = Stack<String>();

  stack.push("Yazan");
  print('--Push--');

  stack.push("Shrouf");
  print('--Push--');

  stack.push("Ahmad");
  print('--Push--');

  print('Last Element is: ${stack.peek()}');
  print('Size is: ${stack.size()}');

  print('--Pop--');
  stack.pop();

  print('Last Element is: ${stack.peek()}');
  print('Size is: ${stack.size()}');

  stack.clear();
  print('--Clear--');
  print('Size is: ${stack.size()}');
  print('Is Stack Empty?: ${stack.isEmpty()}');
  print('Last Element is: ${stack.peek()}');
}
