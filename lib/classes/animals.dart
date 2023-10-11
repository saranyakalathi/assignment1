class Animals{
  // Animals();
  Animals(this.name,this.age);//normal constructor
  Animals.thisIsMyConstructor(this.name,[this.age=20]);//named constructor
  const Animals.anotherConstructor(this.age,this.name);//const constructor
  final String name;
  final int age;
}

//initializer list to find date of birth

class Animal{
  // Animal(this._name,this._age,this.dob);//normal constructor
  Animal.thisIsMyConstructor(this._name,this.dob,[this._age=20]);//named constructor
  // const Animal.anotherConstructor(this._age,this.name,this.dob);
  Animal.dateOfBirth(String name, int age)
  : _name=name,
  _age=age,
  dob=DateTime.now().subtract(Duration(days: (age*355.25).round()));
  //const constructor
  String _name;
  late int _age;
  late DateTime dob;


  void printAnimalDetails(){
    print(_name);
    print(age);
    print(dob);
  }
  int get age => _age;
  //setter method for name
  void set name1(String name){
    if(name != null){
      this._name=name;
    }
  }

  static int _noOfAnimals1=0;
  Animal(this._name,this._age){
    _noOfAnimals1++;
  }

  static int noOfAnimals(){
    return _noOfAnimals1;
  }

  // static int get noOfAnimals2=> _noOfAnimals1;


  @override
 
  int get hashCode => _name.hashCode ^ _age.hashCode;
  //override equals operator
  @override
  bool operator ==(Object other) => other is Animal && other._name==_name && other._age==_age;

  

}


class Bird extends Animal{
  Bird(this.wingSpan,super._name,super._age);
  double wingSpan;
  @override
  void printAnimalDetails() {
    print(_name);
    print(_age);
    print(wingSpan);
  }

  //override copywith method
  @override
  Bird copyWith({String? name}) {
    print(this.wingSpan);
    print(name);
    print(_age);
    return Bird( this.wingSpan, name?? this._name,  this._age);
  }

  //override tostring
  @override
  String toString() {
    return 'Bird{wingSpan: $wingSpan, name: $_name, age: $_age}';
  }
}

abstract class Vehicle{
  void move();
  void stop();
}
class Car implements Vehicle{
  @override
  void move() {
    print("Car Moving");
  }
  @override
  void stop() {
    print("Car Stopping");
  }
}

class Bicycle extends Vehicle{
  @override
  void move() {
    print("Bicycle Moving");
  }
  @override
  void stop() {
    print("Bicycle Stopping");
  }
}


class Cage<Animal> {
  List<Animal> _animals = [];
  void addAnimal(Animal animal){
    _animals.add(animal);
  }
}

void main(){
  // Animal animal = new Animal(_name, _age, dob)
  Animal animal = new Animal.dateOfBirth('Lion', 15);
  animal.printAnimalDetails();
  print(animal.age);
  animal.name1='tiger';

  //animal instances
  Animal('lion',20);
  Animal('Tiger',30);
  Animal('Cat',5);
  Animal a=Animal('Dog',10);
  Animal b=Animal('Dog',10);
  print(Animal.noOfAnimals());

  //before overriding it compared address and after overriding hashcode and == it compares values.
  print(a==b);
  print(a.hashCode);
  print(b.hashCode);
  print(a==b);

  Bird bird=Bird(50, 'penquin', 10);
  bird.printAnimalDetails();
  bird.copyWith(name: 'Cow');
  // bird.printAnimalDetails();

  final animal5 = Animal('zebra', 10)
  //cscading operator
  .._name='zebraNo'
  .._age=15;

  print(animal5._name);
  
  
}