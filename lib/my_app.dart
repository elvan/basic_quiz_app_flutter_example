import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

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

  void answerQuestion() {
    print('Answer chosen!');
    print("questionIndex: $questionIndex");

    setState(() {
      if (questionIndex < questions.length - 1) {
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
            Text(questions[questionIndex]),
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
