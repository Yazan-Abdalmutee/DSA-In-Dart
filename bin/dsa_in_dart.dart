import 'dart:collection';

import 'package:dsa_in_dart/algorthims/huffman_code.dart';
import 'package:dsa_in_dart/linked_list/doubly_linked_list.dart';
import 'package:dsa_in_dart/queue/linked_queue.dart';
import 'package:dsa_in_dart/queue/list_queue.dart';
import 'package:dsa_in_dart/stack/stack.dart';

void main() {
  //runQueueExample(useLinkedQueue: true); //false for using ListQueue
  //runStackExample();
  //runHuffmanExample();
  //runDoublyLinkedListExample();
}

void runDoublyLinkedListExample() {
  DoublyLinkedList<int> doublyLinkedList = DoublyLinkedList<int>();
  doublyLinkedList.insertAtHead(1);
  doublyLinkedList.insertAtTail(2);
  doublyLinkedList.insertAt(2, 3);
  doublyLinkedList.delete(2);
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

void runHuffmanExample() {
  Map<String, int> frequencies = {'A': 40, 'B': 35, 'C': 20, 'D': 5};

  HuffmanCoding huffmanCoding = HuffmanCoding();
  huffmanCoding.buildHuffmanTree(frequencies);

  print('Huffman Codes:');
  huffmanCoding.huffmanCodes.forEach((character, code) {
    print('$character: $code');
  });

  String code = "1011001100";
  try {
    print("Decoded Msg is: ${huffmanCoding.decodeHuffmanCodesUsingMap(code)}");
    print(
      "Decoded Msg is: ${huffmanCoding.decodeHuffmanCodesUsingHuffmanTree(code)}",
    );
  } catch (e) {
    print(e);
  }
}
