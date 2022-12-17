import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

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
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Quiz',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Basic Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Column(
                children: <Widget>[
                  Question(_questions[_questionIndex]['questionText']),
                  ...(_questions[_questionIndex]['answers'] as List<String>)
                      .map((question) {
                    return Answer(
                      answerText: question,
                      selectHandler: _answerQuestion,
                    );
                  }).toList(),
                ],
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
