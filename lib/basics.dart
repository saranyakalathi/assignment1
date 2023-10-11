import 'package:flutter/material.dart';

class Basics extends StatelessWidget{
  Basics({super.key, required this.a,required this.b});
  final int a;
  final double b;
  final String c = 'sara';
  final bool d=true;
  String one = 'Hello';
  String two = 'World!';
  double type= 20;
  int change = 20.0 as int;
  dynamic e=10;
  var kit;
  bool isTrue = true;
  final runType= 'sara';
  
  @override
  Widget build(BuildContext context) {
    print(one +' '+ two);
    print(c.length);
    print(c.toUpperCase());
    print(two.toLowerCase());
    print(kit);
    print(isTrue);
    print(!isTrue);
    print(runType.runtimeType);
    if(a==b){
      print('used ==');
    }
    if(a>b){
      print('used >');
    }
    if(a+b<=30)
    {
      print('used <');
    }
    if(isTrue && a>b)
    {
      print('used &&');
    }
    else{
      print('nothing is true');
    }
    kit=10;
    e='50';
    return const Text(
      'working===>'
    );
  } 
}