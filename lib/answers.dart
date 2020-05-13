import 'package:flutter/material.dart';

class Answers extends StatelessWidget{
  final Function selectHandler;
  final String answerText;
  Answers(this.selectHandler,this.answerText);
  @override
  Widget build(BuildContext context){
    return Container(
      width:double.infinity,
      child: RaisedButton(
        color:Colors.teal[900],
        textColor: Colors.white,
        child:Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}