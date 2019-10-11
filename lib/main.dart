import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Column(
        children: <Widget>[
          Text("Unchanged Text"),
          RaisedButton(
            child: Text("Change"),
            onPressed: null,
          )
        ],
      ),
    ));
  }
}
