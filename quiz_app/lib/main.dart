import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite Battler Royale game?',
        'answers': ["Fornite", "PUBG", "APEX LEGENDS", "Ring of Elysium"],
      },
      {
        "questionText": 'What\'s your favorite food?',
        "answers": ['Pizza', 'Pasta', 'Burger', 'Tacos'],
      },
      {
        'questionText': 'What\'s  your favorite color?',
        'answers': ['Red', 'Blue', 'Green', 'Black']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Flutter App'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answerText) {
              return Answer(answerText, _answerQuestion);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
