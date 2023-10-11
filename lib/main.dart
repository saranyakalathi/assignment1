import 'package:assignment/basics.dart';
import 'package:assignment/basics2.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp( MaterialApp(home: Basics(a:10,b: 20,),));
  

  runApp(MaterialApp(home: Scaffold(appBar: AppBar(actions: [
    Basics(a: 200, b: 300),
    BasicsTwo(),
  ],)),));
}

