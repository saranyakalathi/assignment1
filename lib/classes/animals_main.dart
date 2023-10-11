import 'package:assignment/classes/animals.dart';

void main(){
  // Animal animal = new Animal(_name, _age, dob)
  Animal animal = new Animal.dateOfBirth('Lion', 15);
  animal.printAnimalDetails();
  print(animal.age);
  animal.name1='tiger';
  animal.printAnimalDetails();

  //animal instances
  Animal('lion',20);
  Animal('Tiger',30);
  Animal('Cat',5);
  Animal a=Animal('Dog',10);
  Animal b=Animal('Dog',10);
  print(Animal.noOfAnimals());

  print(a==b);
  print(a.hashCode);
  print(b.hashCode);
  print(a==b);

  Bird bird=Bird(50, 'penquin', 10);
  bird.printAnimalDetails();
  
}