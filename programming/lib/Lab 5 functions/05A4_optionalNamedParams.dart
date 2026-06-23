void main() {
  print(opNamed("Nabhag", percentage: 45, roll: 125));
}

String opNamed(String name, {double percentage = 75, int roll = 101}) {
  return "$name's Roll no is $roll and got $percentage percentage.";
}
