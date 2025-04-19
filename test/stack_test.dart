import 'package:dsa_in_dart/stack.dart';
import 'package:test/test.dart';

void main() {
  group('Stack Basic Operations', () {
    late Stack<int> stack;

    setUp(() {
      stack = Stack<int>();
    });

    test('initial size should be zero', () {
      expect(stack.size(), equals(0));
    });

    test('push should append an element', () {
      stack.push(10);
      stack.push(20);
      expect(stack.size(), equals(2));
      expect(stack.peek(), equals(20));
    });

    test('peek should return last element', () {
      stack.push(10);
      stack.push(20);
      final lastElement = stack.peek();
      expect(lastElement, equals(20));
    });
    
    test('pop should remove last element', () {
      stack.push(1);
      stack.push(2);
      stack.push(3);
      final removed = stack.pop();
      expect(removed, equals(3));
      expect(stack.size(), equals(2));
    });

    test('clear should remove all elements', () {
      stack.push(1);
      stack.push(2);
      stack.push(3);
      stack.clear();
      expect(stack.size(), equals(0));
    });

    test('isEmpty should retrun True if stack is empty', () {
      expect(stack.isEmpty(), equals(true));
    });
  });
}
