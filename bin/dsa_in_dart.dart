import 'package:dsa_in_dart/algorthims/huffman_code.dart';
import 'package:dsa_in_dart/queue/linked_queue.dart';
import 'package:dsa_in_dart/queue/list_queue.dart';
import 'package:dsa_in_dart/stack/stack.dart';

void main() {

  //Queue using list and linkdList Main Code
  /*
  //ListQueue<String> queue = ListQueue<String>();   // un comment to use this
  LinkedQueue<String> queue = LinkedQueue<String>();
  queue.enqueue("Yazan");
  print('--Enqueue--');
  queue.enqueue("Shrouf");
  print('--Enqueue--');
  queue.enqueue("Ahmad");
  print('--Enqueue--');
  print('First Element is: ${queue.front()}');
  print('size is: ${queue.size()}');
  print('--Dequeue--');
  queue.dequeue();
  print('First Element is: ${queue.front()}');
  print('size is: ${queue.size()}');
  queue.clear();
  print('--Clear--');
  print('size is: ${queue.size()}');
  print('is Stack Empty?: ${queue.isEmpty()}');
  print('First Element is: ${queue.front()}');
  */

  //Stack Main Code
  /*
  Stack<String> stack = Stack<String>();
  stack.push("Yazan");
  print('--Push--');
  stack.push("Shrouf");
  print('--Push--');
  stack.push("Ahmad");
  print('--Push--');
  print('Last Element is: ${stack.peek()}');
  print('size is: ${stack.size()}');
  print('--Pop--');
  stack.pop();
  print('Last Element is: ${stack.peek()}');
  print('size is: ${stack.size()}');
  stack.clear();
  print('--Clear--');
  print('size is: ${stack.size()}');
  print('is Stack Empty?: ${stack.isEmpty()}');
  print('Last Element is: ${stack.peek()}');

*/

  //Huffman Main Code
  /*  
  Map<String, int> frequencies = {'A': 40, 'B': 35, 'C': 20, 'D': 5};

  HuffmanCoding huffmanCoding = HuffmanCoding();
  huffmanCoding.buildHuffmanTree(frequencies);
  print('Huffman Codes:');
  huffmanCoding.huffmanCodes.forEach((character, code) {
    print('$character: $code');
  });
  String code = "1011001100";
  try {
    print("Decoded Msg is : ${huffmanCoding.decodeHuffmanCodesUsingMap(code)}");
    print("Decoded Msg is : ${huffmanCoding.decodeHuffmanCodesUsingHuffmanTree(code)}");
  } catch (e) {
    print(e);
  }
  */
}
