import 'package:flutter/material.dart';
 
class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
 
  Answer(this.selectHandler, this.answerText);
 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80.0,
      padding: EdgeInsets.all(8.0),
      
      child: RaisedButton(
        color: Color.fromARGB(255, 255, 75, 75),
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ), //RaisedButton
    ); //Container
  }
}