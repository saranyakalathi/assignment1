class Animal2 {
  Animal2(this.name, this.age);
  String name;
  int age;
  factory Animal2.createAnimals(String type, int age, String name) {
    switch (type) {
      case "Dog":
        print('Dog is called');
        return Dog(name, age);
      case "Cat":
        print('Cat is called');
        return Cat(name, age);
      default:
        print('Animal is called');
        return Animal2(name, age);
    }
  }
}

class Dog extends Animal2 {
  Dog(super.name, super.age);
}

class Cat extends Animal2 {
  Cat(super.name, super.age);
}

void main() {
  Animal2.createAnimals('Dog', 10, 'Doberman');
}
