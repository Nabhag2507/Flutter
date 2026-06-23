import 'dart:io';

void main() {
  Map<String, int> marks = {"nabhag": 60, "vishal": 50};

  stdout.write("Enter key to check : ");
  String key = stdin.readLineSync()!;

  if (marks[key] == null) {
    print("Key does not exists");
    return;
  }
  print("Key exists.");
}
