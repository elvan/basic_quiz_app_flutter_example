import 'package:flutter/material.dart';

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

  var _answers = [
    'Black',
    'Green',
    'Blue',
    'Red',
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
            Text(_questions[questionIndex]),
            RaisedButton(
              child: Text(_answers[0]),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text(_answers[1]),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text(_answers[2]),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text(_answers[3]),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
