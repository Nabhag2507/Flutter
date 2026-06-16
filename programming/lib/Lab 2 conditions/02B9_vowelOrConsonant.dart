import 'dart:io';

void main() {
  stdout.write("Enter character : ");
  String ch = stdin.readLineSync()!;

  switch (ch) {
    case ("a" || "e" || "o" || "u" || "i" || "A" || "E" || "I" || "O" || "U"):
      print("Character is vowel.");
      break;

    default:
      print("Character is consonant.");
  }
}
