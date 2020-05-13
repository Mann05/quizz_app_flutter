import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// class or property leading with _ treated as private
// _MyAppState treated as private class and MyAppState treated as public(accessible anywhere where import main.dart part) class
class _MyAppState extends State<MyApp> {
  var questions = [
    {
      'questionText': 'Whats\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'Blue', 'score': 1}
      ]
    },
    {
      'questionText': 'Whats\'s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 8},
        {'text': 'Snake', 'score': 9},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 3}
      ]
    },
    {
      'questionText': 'Whats\'s your favourite Place?',
      'answers': [
        {'text': 'Darzelling', 'score': 10},
        {'text': 'Otty', 'score': 8},
        {'text':'Shimla','score':4},
        {'text':'Goa','score':9}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    if (_questionIndex < questions.length) {
      setState(() {
        _questionIndex += 1;
      });
    }
  }
void _resetQuiz(){
  setState(() {
    _totalScore=0;
    _questionIndex = 0;
  });
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My First App')),
      body: _questionIndex < questions.length
          ? Quiz(
              questions: questions,
              questionIndex: _questionIndex,
              answerQuestion: _answerQuestion,
            )
          : Result(_totalScore,_resetQuiz),
    ));
  }
}
