void main() {
  Map<String, int> marks = {"nabhag": 60, "vishal": 50};

  // add
  marks["kuldeep"] = 90;

  // update
  marks["vishal"] = 70;

  // remove
  marks.remove("vishal");

  print(marks);
}
