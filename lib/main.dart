import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SomeApp());
}

class SomeApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SomeAppState();
  }
}

class SomeAppState extends State<SomeApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
    });

    print(questions[questionIndex]);
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
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
