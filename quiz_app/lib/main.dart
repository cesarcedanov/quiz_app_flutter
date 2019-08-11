import 'package:flutter/material.dart';
import './quiz.dart';
import './results.dart';

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
  var _totalScore = 0;
  var _questions = const [
    {
      'questionText': 'What is cesar\'s favorite Battle Royale game?',
      'answers': [
        {'text': 'Fornite', 'score': 1},
        {'text': 'PUBG', 'score': 3},
        {'text': 'APEX LEGENDS', 'score': 10},
        {'text': 'Ring of Elysium', 'score': 5},
      ],
    },
    {
      'questionText': 'What is cesar\'s favorite food?',
      'answers': [
        {'text': 'Pizza', 'score': 3},
        {'text': 'Burger', 'score': 5},
        {'text': 'Pasta', 'score': 10},
        {'text': 'Tacos', 'score': 1},
      ],
    },
    {
      'questionText': 'What\ is cesar\'s favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'White', 'score': 5},
        {'text': 'Red', 'score': 1},
        {'text': 'Blue', 'score': 3},
      ],
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Flutter App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
