import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;

  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': ['Max', 'Max', 'Max', 'Max'],
    },
  ];

  void _answerQuestion() {
    print('Answer chosen!');

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
            Question(_questions[questionIndex]['questionText']),
            ...(_questions[questionIndex]['answers'] as List<String>)
                .map((question) {
              return Answer(
                answerText: question,
                selectHandler: _answerQuestion,
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
