void main() {
  Map<String, int> marks = {"nabhag": 60, "vishal": 50};

  for (var name in marks.keys) {
    print("$name, ${marks[name]}");
  }
}
