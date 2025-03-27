import 'package:dsa_in_dart/algorthims/huffman_code.dart';

void main() {
  Map<String, int> frequencies = {'A': 40, 'B': 35, 'C': 20, 'D': 5};

  HuffmanCoding huffmanCoding = HuffmanCoding();
  huffmanCoding.buildHuffmanTree(frequencies);
  print('Huffman Codes:');
  huffmanCoding.huffmanCodes.forEach((character, code) {
    print('$character: $code');
  });
  String code = "000110111";
  try {
    print("Decoded Msg is : ${huffmanCoding.decodeHuffmanCodes(code)}");
  } catch (e) {
    print(e);
  }
}
