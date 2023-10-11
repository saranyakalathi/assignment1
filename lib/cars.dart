class Car{
  Car(this.engine,this.brand);
  Engine engine;
  String brand;
}
class Engine{
  Engine(this.cc);
  double cc;
}

void main() {
  var car = new Car(new Engine(1000), 'BMW');
  print(car.engine.cc);
}