mixin Flyer {
  void fly(){
    print('fly');
  }
}

mixin Swimmer{
  void swim(){
    print('swim');
  }
}

mixin Walker{
  void walk(){
    print('walk');
  }
}

class Duck with Flyer, Swimmer{
  void work1(){
    print('duck');
  }
}

class Penquin with Swimmer,Walker{
  void work2(){
    print('penquin');
  }
}



//Drawbacks of mixin
//naming conflictions
//inheritance=>ie., it can't be extended
//we can't have constructor in it

extension Median on List{
  //Tofind median
  int  median(){
    final sortNumber = [...this]..sort();
    int mid=length ~/2;
    if(length%2==0){
      return (sortNumber[mid-1]+sortNumber[mid])~/2;
    }
    // 
    return sortNumber[mid];
  }
}

void main(){
  // var flyer = Flyer();
  // flyer..work()..work1()..work();
  var duck=Duck();
  var penquin=Penquin();
  print('Its duck');
  duck..fly()..swim()..work1();
  print('Its penquin');
  penquin..swim()..walk()..work2();

  final numbers = [1,2,3,4,5,6,7,8];
  print(numbers.median());

  List<int> a=[1,2,3,4,5];
  int index=2;
  try{
    CheckException().accept(a, index);
  }
  catch(e){
    print(e);
  }

  try {
    isEven(5);
  } catch (e) {
    print(e);
    // throw Exception('throwed');
  }
  // future();

}

class CheckException{
  //functions accepting list and index
  int accept(List<int> a,int index){
    assert(a is List<int>, "the list cannot be null");
    assert(index>=0 || index<a.length, "index out of range command");
    // if(index<0 || index>=a.length){
    //   throw Exception("index out of range");
    // }
    return a[index];

    
  }
}


void isEven(int num){
  assert(num%2==0,"it is not even");
  print(num);
}


