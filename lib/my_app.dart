import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
      "What's your favorite sport",
    ];

    var answers = [
      'Black',
      'Green',
      'Blue',
      'Red',
    ];

    return MaterialApp(
      title: 'Basic Quiz',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Basic Quiz'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[0]),
            RaisedButton(
              child: Text(answers[0]),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text(answers[1]),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text(answers[2]),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text(answers[3]),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
