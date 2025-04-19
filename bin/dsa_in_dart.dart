import 'package:dsa_in_dart/algorthims/huffman_code.dart';
import 'package:dsa_in_dart/stack.dart';

void main() {



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
