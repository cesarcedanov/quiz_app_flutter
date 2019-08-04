import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function onPress;

  Answer(this.answerText, this.onPress);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.amber,
        child: Text(answerText),
        onPressed: onPress,
      ),
    );
  }
}
