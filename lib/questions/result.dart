import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class Result extends StatelessWidget {
final int resultScore;
final Function resetHandler;

Result(this.resultScore, this.resetHandler);
var collection = FirebaseFirestore.instance.collection('users');

//Remark Logic
String get resultPhrase {
	String resultText;
  Map result1= {};

  var result = { 'points': resultScore};
  result1[0] = resultScore.toString();
	if (resultScore >= 41) {
	resultText = 'You are awesome!';
	print(resultScore);
  collection.doc('uid').update(result);
	} else if (resultScore >= 31) {
	resultText = 'Pretty likeable!';
	print(resultScore);
    collection.doc('uid').update({ 'points': resultScore});

	} else if (resultScore >= 21) {
	resultText = 'You need to work more!';
   collection.doc('uid').update({ 'points': resultScore});

	} else if (resultScore >= 1) {
	resultText = 'You need to work hard!';
    collection.doc('uid').update({ 'points': resultScore});

	} else {
	resultText = 'This is a poor score!';
	print(resultScore);
    collection.doc('uid').update({ 'points': resultScore});

	}
    collection.doc('uid').update({ 'points': resultScore});

	return resultText;
}

@override
Widget build(BuildContext context) {
	return Center(
	child: Column(
		mainAxisAlignment: MainAxisAlignment.center,
		children: <Widget>[
		Text(
			resultPhrase,
			style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
			textAlign: TextAlign.center,
		), //Text
		Text(
			'Score ' '$resultScore',
			style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
			textAlign: TextAlign.center,
		), //Text
		FlatButton(
			child: Text(
			'Restart Quiz!',
			), //Text
			textColor: Color.fromARGB(255, 255, 132, 38),
			onPressed: resetHandler,
		), //FlatButton
		], //<Widget>[]
	), //Column
	); //Center
}
}
