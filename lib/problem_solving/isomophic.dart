class Isomophic {
  bool isIsomophic(String a, String b) {
    Map<String, String> values = {};
    if (a.length != b.length) return false;
    for (int i = 0; i < a.length; i++) {
      if (values.containsKey(a[i])) {
        if (b[i] != values[a[i]]) {
          return false;
        }
      } else {
        values[a[i]] = b[i];
      }
    }
    return true;
  }
}
