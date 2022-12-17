import 'package:flutter/material.dart';

import 'question.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  var _questions = [
    "What's your favorite color?",
    "What's your favorite animal?",
    "What's your favorite sport",
  ];

  void _answerQuestion() {
    print('Answer chosen!');
    print("questionIndex: $questionIndex");

    setState(() {
      if (questionIndex < _questions.length - 1) {
        questionIndex = questionIndex + 1;
      } else {
        questionIndex = 0;
      }

      print("questionIndex: $questionIndex");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Quiz',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Basic Quiz'),
        ),
        body: Column(
          children: <Widget>[
            Question(_questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 4'),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
