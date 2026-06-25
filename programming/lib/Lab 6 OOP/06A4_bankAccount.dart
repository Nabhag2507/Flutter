class Bankaccount {
  int intial;
  Bankaccount(this.intial);

  void deposite(int amount) {
    intial += amount;
  }

  int withdraw(int amount) {
    if (amount > intial) {
      print("Invalid balance");
      return -1;
    }
    intial -= amount;
    return amount;
  }
}

void main() {
  Bankaccount b1 = Bankaccount(1000);
  b1.deposite(1500);
  print(b1.withdraw(1200));
  print(b1.intial);
}
