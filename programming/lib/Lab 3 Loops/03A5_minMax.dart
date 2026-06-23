void main() {
  List<int> li = [1, 2, 3, 4, 5];

  int min = li[0], max = li[0];
  for (int i = 0; i < li.length; i++) {
    if (li[i] < min) {
      min = li[i];
    }
    if (li[i] > max) {
      max = li[i];
    }
  }
  print("Min is $min and max is $max.");
}
