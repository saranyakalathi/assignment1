import 'package:flutter/material.dart';

//enum
  enum Color{
    red,
    green,
    blue
  }


class BasicsTwo extends StatelessWidget{
  var a = 10;
  var b = true;
  var c = 'sara';
  final d = 'final';
  //Only static fields can be declared as const.
  static const e = 'constant';


  
  @override
  Widget build(BuildContext context) {
    // Constant variables can't be assigned a value.
    // Try removing the assignment, or remove the modifier 'const' from the variable.
    // e='is changeable';
    c='saranya';
    // d='not final';'d' can't be used as a setter because it's final.
    print(a.runtimeType);
    print(b.runtimeType);
    print(c + ' and its type is ' + c.runtimeType.toString());
    dynamic var1=10;
    print(var1);
    var1='sara';
    print(var1);
    var1=true;
    print(var1);



    //if-else
    if(a>0){
      print(a.toString() + ' is positive');
    }
    // if(a<0){
    //   print(a.toString() + ' is negative');
    // }
    else{
      if(a<0){
        print(a.toString() + ' is negative');
      }
      else{
        print(' is zero');
      }
    }
    int n = 1;
    while(n<=10){
      print(n);
      n++;
    }
    
    int fact=1;
    for(int n1=5;n1>0;n1--){
      fact*=n1;
    }
    print(fact);

    int num = 1;
    while(num<=50){
      print(num);
      
      if(num==25){
        break;
      }
       num++;
    }
    int num1=1;
    while(num1<=50){
      if(num1>20 && num1 <30){
        continue;
      }
      print(num1);
       num1++;
    }

    String day = 'saturday';
    switch (day) {
        case 'monday':print('week-day');break;
        case 'tuesday':print('week-day');break;
        case 'wednesday':print('week-day');break;
        case 'thursday':print('week-day');break;
        case 'friday':print('week-day');break;
        case 'saturday':print('week-end');break;
        case 'sunday':print('week-end');break;
      default:print('invalid input');
    }


    //using enum
    MaterialColor color1 = Colors.red;

    switch (color1) {
      case Colors.red:print('red');
        break;
        case Colors.green:print('red');
        break;
        case Colors.blue:print('red');
        break;
      default:print('invalid entry');
    }
    return const Text(
      'Basics2 working'
    );
  }
}