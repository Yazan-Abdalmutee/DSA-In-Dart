import 'package:dsa_in_dart/linked_list/circular_linked_list.dart';
import 'package:test/test.dart';

void main() {
  group('Doubly LinkedList Basic Operations', () {
    late CicularLinkedList<int> cicularLinkedList;

    setUp(() {
      cicularLinkedList = CicularLinkedList<int>();
    });

    test('initial length should be zero', () {
      expect(cicularLinkedList.length(), equals(0));
    });

    test('insert should add the value at the end', () {
      cicularLinkedList.insertAtEnd(1);
      cicularLinkedList.insertAtEnd(2);
      cicularLinkedList.insertAtEnd(3);
      expect(cicularLinkedList[2], equals(3));
      expect(cicularLinkedList.length(), equals(3));
    });
    test('Delete should delete all nodes that contain that element', () {
      cicularLinkedList.insertAtEnd(1);
      cicularLinkedList.insertAtEnd(2);
      cicularLinkedList.insertAtEnd(3);
      cicularLinkedList.insertAtEnd(1);
      cicularLinkedList.insertAtEnd(4);
      cicularLinkedList.insertAtEnd(1);
      expect(cicularLinkedList.delete(1), true);
      expect(cicularLinkedList.contains(1), false);
      expect(cicularLinkedList.delete(5), equals(false));
      expect(cicularLinkedList.length(), equals(3));
    });

    test('getAt method should return the value at that index', () {
      cicularLinkedList.insertAtEnd(1);
      cicularLinkedList.insertAtEnd(2);
      cicularLinkedList.insertAtEnd(3);
      cicularLinkedList.insertAtEnd(4);
      expect(cicularLinkedList.getAt(12), null);
      expect(cicularLinkedList.getAt(2), equals(3));
    });

    test(
      'contains method should return true if that elemnt exist in the doubly llinked list',
      () {
        cicularLinkedList.insertAtEnd(1);
        cicularLinkedList.insertAtEnd(2);
        cicularLinkedList.insertAtEnd(3);
        cicularLinkedList.insertAtEnd(4);
        expect(cicularLinkedList.contains(3), true);
        expect(cicularLinkedList.contains(7), false);
      },
    );
  });
}
