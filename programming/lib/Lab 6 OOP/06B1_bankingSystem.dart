import 'dart:io';

class Bankaccount {
  int intial = 0;

  // account creation
  Bankaccount(int intial) {
    this.intial = intial;
    print("Your account has been created with balance $intial.");
  }

  // deposite
  void deposite(int amount) {
    intial += amount;
    print("Successfully deposited $amount.");
  }

  // withdraw
  void withdraw(int amount) {
    if (amount > intial) {
      print("Invalid balance");
      return;
    }
    print("Successfully withdrawed $amount.");
    intial -= amount;
  }

  // inquiry
  void inquiry() {
    print("Your account has balance of $intial");
  }
}

void main() {
  stdout.write("Enter intial amount : ");
  int amount = int.parse(stdin.readLineSync()!);

  Bankaccount b1 = Bankaccount(amount);

  while (true) {
    print("To deposite enter 1");
    print("To withdraw enter 2");
    print("To inquiry enter 3");
    print("To escape enter 4");

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case (1):
        stdout.write("Enter amount : ");
        int amt = int.parse(stdin.readLineSync()!);
        b1.deposite(amt);
        break;

      case (2):
        stdout.write("Enter amount : ");
        int amt = int.parse(stdin.readLineSync()!);
        b1.withdraw(amt);
        break;

      case (3):
        b1.inquiry();
        break;
    }

    if (choice == 4) break;
  }
}
