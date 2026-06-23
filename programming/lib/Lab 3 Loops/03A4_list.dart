import 'dart:io';

void main() {
  stdout.write("Enter size : ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> li = [];

  for (int i = 0; i < n; i++) {
    int temp = int.parse(stdin.readLineSync()!);
    li.add(temp);
  }

  for (int i = 0; i < li.length; i++) {
    print(li[i]);
  }
}
