import 'package:flutter/material.dart';

import './answers.dart';
import './questions.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answers(()=>answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
