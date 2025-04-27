import 'package:dsa_in_dart/queue/list_queue.dart';
import 'package:test/test.dart';

void main() {
  group('queue Basic Operations', () {
    late ListQueue<int> queue;

    setUp(() {
      queue = ListQueue<int>();
    });

    test('initial size should be zero', () {
      expect(queue.size(), equals(0));
    });

    test('enqueue should append an element', () {
      queue.enqueue(10);
      queue.enqueue(20);
      expect(queue.size(), equals(2));
      expect(queue.front(), equals(10));
      expect(queue.isEmpty(), equals(false));
    });

    test('front should return first element', () {
      queue.enqueue(10);
      queue.enqueue(20);
      final firstElement = queue.front();
      expect(firstElement, equals(10));
    });

      test('front element of empty queue should be null', () {
      queue.enqueue(1);
      queue.dequeue();
      final firstElement = queue.front();
      expect(firstElement, null);
    });

    test('dequeue should remove first element', () {
      queue.enqueue(1);
      queue.enqueue(2);
      queue.enqueue(3);
      final removed = queue.dequeue();
      expect(removed, equals(1));
      expect(queue.size(), equals(2));
    });

    test('dequeue from empty queue should return null', () {
      queue.enqueue(1);
      queue.dequeue();
      final removed = queue.dequeue();
      expect(removed, null);
    });

    test('clear should remove all elements', () {
      queue.enqueue(1);
      queue.enqueue(2);
      queue.enqueue(3);
      queue.clear();
      expect(queue.size(), equals(0));
      expect(queue.isEmpty(), equals(true));
    });

    test('isEmpty should retrun True if queue is empty', () {
      expect(queue.isEmpty(), equals(true));
    });
  });
}
