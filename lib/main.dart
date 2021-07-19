import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const List<Map<String, Object>> _questions = [
    {
      'questionText': 'Who is your favorite 鳥仔?',
      'answers': [
        {'text': '小暴龍', 'score': 5},
        {'text': '肥宅', 'score': 5},
        {'text': '毛怪', 'score': 5},
      ],
    },
    {
      'questionText': 'Who is your favorite 大象?',
      'answers': [
        {'text': '波波', 'score': 5},
        {'text': '咔梆', 'score': 5},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex =
          _questionIndex < _questions.length ? _questionIndex += 1 : 0;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('MineApp'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion,
                )
              : Result(
                  totalScore: _totalScore,
                  resetQuiz: _resetQuiz,
                )),
    );
  }
}
