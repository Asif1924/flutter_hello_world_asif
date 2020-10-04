import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';
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

  final questions = const [
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
    if (_questionIndex < questions.length) {
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
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
