import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback answerQuestion;

  const Answer(this.answerText, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(answerText),
      color: Colors.blue,
      onPressed: answerQuestion,
    );
  }
}
