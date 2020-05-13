import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  //Getter
  String get resultPhrases {
    String result;
    if (totalScore <= 8) {
      result = 'You are awesome and innocent';
    } else if (totalScore <= 12) {
      result = 'Pretty Likeable !';
    } else if (totalScore <= 16) {
      result = 'You are .... Strange!';
    } else {
      result = 'You are bad!';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          resultPhrases,
          style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 22.0),
          textAlign: TextAlign.center,
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: resetQuiz,
            child: Text('Reset'),
            textColor: Colors.white,
            color: Colors.redAccent,
          ),
        )
      ],
    ));
  }
}
