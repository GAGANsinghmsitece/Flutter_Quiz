import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final Function clickHandler;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz(
      {@required this.clickHandler,
      @required this.questions,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => clickHandler(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
