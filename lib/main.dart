import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "quiz.dart";
import 'result.dart';
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

  final _questions = const [
    {
      "questionText": "What's your favourite color?",
      "answers": ["Black", "Red", "Green", "White"]
    },
    {
      "questionText": "What's your favourite tiger?",
      "answers": ["Tiger", "Lion", "Liger", "TiLiger"]
    },
    {
      "questionText": "What's your favourite salad?",
      "answers": ["Cesar", "Ranch", "House", "Greek"]
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have more questions!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Some App Bar"),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(),
      ),
    );
  }
}
