import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//private classes prefix with _, i.e. no private keyword as in java

void main() {
  runApp(SomeApp());
}

class SomeApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SomeAppState();
  }
}

class _SomeAppState extends State<SomeApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });

    print(questions[_questionIndex]);
  }

  var questions = [
    "What's your favourite color?",
    "What's your favourite tiger?",
    "What's your favourite salad?",
    "What's your favourite dressing?",
    "What's your favourite chair?",
    "What's your favourite guac?",
    "What's your favourite floor?",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Some App Bar"),
        ),
        body: Column(
          children: [
            Text(questions[_questionIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
