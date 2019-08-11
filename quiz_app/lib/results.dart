import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetHandler;
  Result(this.score, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (score == 30) {
      resultText = 'You know \'Cesar\' very well';
    } else if (score >= 20) {
      resultText = 'You are close to Cesar';
    } else if (score >= 7) {
      resultText = 'You should talk more with Cesar';
    } else {
      resultText = 'You don\'t know Cesar';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            color: Colors.blue,
            child: Text('Restart Quiz'),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
