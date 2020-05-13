import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String
      questionText; // final tells that value cant change after constructor receive the value
  Questions(this.questionText); // positional argument accepted

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
//      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
