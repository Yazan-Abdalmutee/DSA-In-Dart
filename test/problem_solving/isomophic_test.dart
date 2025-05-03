import 'package:dsa_in_dart/problem_solving/isomophic.dart';
import 'package:test/test.dart';

void main() {
  group('Isomophic tests', () {
    test('Should return true for isomophic', () {
      Isomophic isomophic = Isomophic();
      expect(isomophic.isIsomophic("aa", "bb"), equals(true));
    });

    test('Should return false for different length ', () {
      Isomophic isomophic = Isomophic();
      expect(isomophic.isIsomophic("aaa", "bb"), equals(false));
    });

    test('Should return false for different length ', () {
      Isomophic isomophic = Isomophic();
      expect(isomophic.isIsomophic("abbac", "vccvk"), equals(true));
    });
  });
}
