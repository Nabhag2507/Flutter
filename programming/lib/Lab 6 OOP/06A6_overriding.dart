class Animal {
  void sound() {
    print("Animal spoke.");
  }
}

class Dog extends Animal {
  void sound() {
    print("Dog barked.");
  }
}

class Cat extends Animal {
  void sound() {
    print("Cat meowed.");
  }
}

void main() {
  Animal a = Animal();
  Dog d = Dog();
  Cat c = Cat();

  a.sound();
  d.sound();
  c.sound();
}
