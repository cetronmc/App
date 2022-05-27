import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_util.dart';

class Result extends StatelessWidget {
final int resultScore;
final Function resetHandler;

Result(this.resultScore, this.resetHandler);
var collection = FirebaseFirestore.instance.collection('users');

var user = FirebaseAuth.instance.currentUser;
var points = valueOrDefault(currentUserDocument?.points, 0)
                                      .toString();
//Remark Logics
String get resultPhrase {


	String resultText;
	if (resultScore >= 100) {
	resultText = 'Increible!';
	print(resultScore);
	} else if (resultScore >= 31) {
	resultText = 'Muy Bien!';
	print(resultScore);

	} else if (resultScore >= 21) {
	resultText = 'Puedes hacerlo mejor!';

	} else if (resultScore >= 1) {
	resultText = 'Necesitas estudiar mas!';

	} else {
	resultText = 'Suerte para la proxima Soldado!';
	print(resultScore);

	}
    collection.doc(user.uid).update({ 'points': int.parse(points) + resultScore});

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
