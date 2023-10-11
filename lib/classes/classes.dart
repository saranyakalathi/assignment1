class Person{
  Person(this.age,this.name);

  String name;
  int age;

  void method(name,age){
    print(name);
    print(age);
  }
}


class _Person2{
  _Person2({this.age=24,required this.name});
  String name;
  int? age;
  void method2(name,age){
    print(name);
    print(age);
  }
}
class Student extends Person{
  Student(this.course, super.age,super.name);
  String course;
  @override
  void method(name, age) {
    print(age);
    print(name);
    print(course);
  }
}

void main(){
  Person p1=new Person(20,"Saranya");
  p1.method(p1.name,p1.age);


  _Person2 p2=new _Person2(name:"Saranya");
  p2.method2(p2.name,p2.age);
  
  Student s1=new Student("CSE",20,"Saranya");
  s1.method(s1.name,s1.age);
}

//


