import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SomeApp());
}

class SomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Some App Bar"),
        ),
        body: Column(
          children: [
            Text("The question"),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: null,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: null,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
