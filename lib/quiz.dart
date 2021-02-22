import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerChosen;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.answerChosen});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['question']),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>).map((answer) {
          return Answer(answer: answer['answer'], callback: () => answerChosen(answer['score']));
        }).toList()
      ],
    );
  }
}
