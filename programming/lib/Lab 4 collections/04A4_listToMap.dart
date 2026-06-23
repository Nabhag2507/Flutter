void main() {
  List<int> li = [1, 2, 3, 4, 5];

  Map<int, int> m = {};

  for (int i = 0; i < li.length; i++) {
    m[li[i]] = li[i] * li[i];
  }

  print(m);
}
