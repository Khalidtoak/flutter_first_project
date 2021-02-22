import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

void main() => runApp(MyApplication());

class MyApplication extends StatefulWidget {
  @override
  _MyApplicationState createState() => _MyApplicationState();
}

class _MyApplicationState extends State<MyApplication> {
  var _questionIndex = 0;
  var _totalScore = 0;

  //const in frot of the value makes it immutable
  var _questions = const [
    {
      'question': 'who is your girlfriend?',
      'answer': [{'answer': 'Aisha', 'score': 10}, {'answer':'Dumebi','score': 2}, {'answer': 'yoyo', 'score': 0}]
    },
    {
      'question': 'what is your fav course',
      'answer': [{'answer': 'csc', 'score': 10}, {'answer':'tpd','score': 2}, {'answer': 'gbas', 'score': 0}]
    },
    {
      'question': 'what is your best food',
      'answer': [{'answer': 'beans', 'score': 4}, {'answer':'rice','score': 2}, {'answer': 'dodo', 'score': 20}]
    }
  ];

  void answerChosen(int score) {
    _totalScore += score;
    setState(() {
      if (_questionIndex < _questions.length) {
        _questionIndex++;
      }
    });
  }

  void onResetPressed() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter app"),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(questions: _questions, questionIndex: _questionIndex, answerChosen: answerChosen)
            : Result(_totalScore, onResetPressed)
      ),
    );
  }
}
