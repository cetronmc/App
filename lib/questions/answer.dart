import 'package:flutter/material.dart';
 
class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
 
  Answer(this.selectHandler, this.answerText);
 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Color.fromARGB(255, 255, 75, 75),
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ), //RaisedButton
    ); //Container
  }
}