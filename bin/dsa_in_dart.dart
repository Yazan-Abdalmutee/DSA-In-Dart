import 'package:dsa_in_dart/algorthims/huffman_code.dart';
import 'package:dsa_in_dart/linked_list/circular_linked_list.dart';
import 'package:dsa_in_dart/linked_list/doubly_linked_list.dart';
import 'package:dsa_in_dart/problem_solving/Strings/anagrams.dart';
import 'package:dsa_in_dart/problem_solving/ring_buffer.dart';
import 'package:dsa_in_dart/problem_solving/Strings/substring_search.dart';
import 'package:dsa_in_dart/queue/linked_queue.dart';
import 'package:dsa_in_dart/queue/list_queue.dart';
import 'package:dsa_in_dart/stack/stack.dart';

void main() {
  //runQueueExample(useLinkedQueue: true); //false for using ListQueue
  //runStackExample();
  //runHuffmanExample();
  //runDoublyLinkedListExample();
  //runCircularLinkedListExample();
  //runSubStringSearchExample();
  //runAnagramsExample();
  //countWordOccurrences("Hi How are You Hi You are ok");
  runRingBufferExample() ;
}

void countWordOccurrences(String s) {
  Map<String, int> result = {};

  List<String> words = s.split(' ');
  for (int i = 0; i < words.length; i++) {
    result.update(words[i], (value) => value + 1, ifAbsent: () => 1);
  }
  result.forEach((key, value) {
    print('$key:$value');
  });
}

void runRingBufferExample() {
  CircularBuffer<int> circularBuffer = CircularBuffer<int>(capacity: 3);
  circularBuffer.add(1);
  circularBuffer.add(2);
  circularBuffer.add(3);
  circularBuffer.add(4);
  circularBuffer.add(5);
  circularBuffer.add(6);
  circularBuffer.add(7);
  circularBuffer.add(8);
  circularBuffer.add(9);
  print('Peak is: ${circularBuffer.peek()}');
  print('Is Full?: ${circularBuffer.isFull()}');
  print('${circularBuffer.toList()}');
}

void runAnagramsExample() {
  Anagrams anagrams = Anagrams(
    firstString: 'racecar',
    secoundString: 'carrace',
  );
  print('is Anagrams (manual): ${anagrams.isAnagramsManual()}');
  print('is Anagrams (Built-in): ${anagrams.isAnagramsBuiltIn()}');
}

void runSubStringSearchExample() {
  SubstringSearch substringSearch = SubstringSearch(
    text: 'banana',
    pattern: 'ana',
  );
  print('Contains (manual): ${substringSearch.containsSubstringManual()}');
  print(
    'First occurrence (manual): ${substringSearch.firstOccurrenceManual()}',
  );
  print('All occurrences (manual): ${substringSearch.allOccurrencesManual()}');
  print('Contains (built-in):${substringSearch.containsSubstringBuiltIn()}');
  print(
    'First occurrence (built-in): ${substringSearch.firstOccurrenceBuiltIn()}',
  );
  print(
    'All occurrences (built-in): ${substringSearch.allOccurrencesBuiltIn()}',
  );
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
