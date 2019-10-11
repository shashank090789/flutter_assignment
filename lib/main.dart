import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_assignment/text.dart';
import 'package:flutter_assignment/textcontrol.dart';
void main() => runApp(MyApp());
 const randomTextList = [
    "You are awsome",
    "You are simple",
    "you are not good",
    "you are dirty"
  ];
class MyApp extends StatefulWidget {
 
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = "some text";

  void changeText() {
    setState(() {
      int index = Random().nextInt(randomTextList.length-1);
      text = randomTextList[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              ChangableText(text),
              TextControl(changeText),
            ],
          ),
        ),
      ),
    ));
  }
}
