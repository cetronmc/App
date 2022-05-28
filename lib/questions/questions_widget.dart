import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './quiz.dart';
import './result.dart';

class QuestionsWidget extends StatefulWidget {
  const QuestionsWidget({Key key}) : super(key: key);

  @override
  _QuestionsWidgetState createState() => _QuestionsWidgetState();
}

class _QuestionsWidgetState extends State<QuestionsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final questions = const [
    {
      'questionText': ' ¿Que es el codigo CVV?',
      'answers': [
        {'text': 'Nombre de la tarjeta', 'score': -2},
        {'text': 'Codigo para usar en el cajero', 'score': -2},
        {'text': 'Codigo de seguridad de la tarjeta', 'score': 10},
        {'text': 'Fecha de expiracion de la tarjeta', 'score': -2},
      ],
    },
    {
      'questionText':
          ' ¿Cuales son los digitos de su tarjeta que pertenecen al BIN?',
      'answers': [
        {'text': 'Los ultimos 6 numeros de la tarjeta', 'score': -2},
        {'text': 'Los primero 2 numeros de la tarjeta', 'score': -2},
        {'text': 'Los ultimos 2 numeros de la tarjeta', 'score': -2},
        {'text': 'Los primeros 6 numeros de la tarjeta', 'score': 10},
      ],
    },
    {
      'questionText': ' ¿Cuando sucede un sobregiro?',
      'answers': [
        {
          'text': 'Cuando se da muchas vueltas a la tarjeta en el cajero',
          'score': -2
        },
        {
          'text': 'Cuando se excede el monto disponible de la cuenta',
          'score': 10
        },
        {'text': 'Cuando se paga mas de la cuenta', 'score': -2},
        {'text': 'Cuando la tarjeta no tiene fondos', 'score': -2},
      ],
    },
    {
      'questionText': ' ¿Que son intereses por financiamiento?',
      'answers': [
        {'text': 'Financiar el balance a su fecha de corte', 'score': 10},
        {'text': 'Monto total disponible para financiar pagos', 'score': -2},
        {'text': 'Saldo total en la cuenta', 'score': -2},
        {'text': 'Fraccionar una compra por pagos', 'score': -2},
      ],
    },
    {
      'questionText': '¿Que es la fecha de consumo?',
      'answers': [
        {
          'text': 'La cantidad maxima de consumo',
          'score': -2,
        },
        {'text': 'Fecha limite antes de realizar el cobro', 'score': 10},
        {'text': 'Fecha limite antes de brindar una bonificacion', 'score': -2},
      ],
    },
    {
      'questionText': ' ¿Limite de credito?',
      'answers': [
        {
          'text': 'Cantidad maxima de credito brindada por el banco',
          'score': 10
        },
        {'text': 'Cantidad maxima de operaciones', 'score': -2},
        {'text': 'Fecha limite de pago', 'score': -2},
        {'text': 'Cantidad que se puede retirar en efectivo', 'score': -2},
      ],
    },
    {
      'questionText': ' ¿Que son los movimientos flotantes?',
      'answers': [
        {
          'text': 'Saldo reducido de la tarjeta de credito',
          'score': 10
        },
        {'text': 'Saldo restante de la tarjeta de credito', 'score': -2},
        {'text': 'Saldo total de la tarjeta de credito', 'score': -2},
        {'text': 'Fecha limite de la tarjeta de credito', 'score': -2},
      ],
    },
    {
      'questionText': ' ¿ Que es el interes bonificable?',
      'answers': [
        {
          'text': 'Intereses que se generan por compras y que se te cobrarán en caso de que realices un abono parcial al saldo de tu tarjeta de crédito.',
          'score': 10
        },
        {'text': 'Interes generado por año', 'score': -2},
        {'text': 'Interes ganado por semana', 'score': -2},
        {'text': '', 'score': -2},
      ],
    },
    {
      'questionText': ' ¿Que es el interes por financiamiento?',
      'answers': [
        {
          'text': 'Cantidad total de cargos por el prestamo y los intereses que se pagarian',
          'score': 10
        },
        {'text': 'Cantidad de prestamos realizados en el mes', 'score': -2},
        {'text': 'Cantidad de interes generado por semana', 'score': -2},
        {'text': 'Cantidad que se puede retirar en efectivo', 'score': -2},
      ],
    },
    {
      'questionText': ' ¿Que es el saldo rotativo?',
      'answers': [
        {
          'text': 'Un tipo de préstamo que le da acceso a una determinada cantidad de dinero',
          'score': 10
        },
        {'text': 'Un prestamos minimo por dia', 'score': -2},
        {'text': 'Un prestamos mensual', 'score': -2},
        {'text': 'Fecha limite de pago', 'score': -2},
      ],
    },
    {
      'questionText': ' ¿Que es el saldo diferido?',
      'answers': [
        {
          'text': 'Permite realizar el pago de una compra en cuotas según sus necesidades, desde 3 a 36 meses con o sin interés',
          'score': 10
        },
        {'text': 'Un tipo de préstamo que le da acceso a una determinada cantidad de dinero', 'score': -2},
        {'text': 'Fecha limite de pago', 'score': -2},
        {'text': 'Cantidad total de cargos por el prestamo y los intereses que se pagarian', 'score': -2},
      ],
    },
    {
      'questionText': ' ¿Que es comprar en cuotas?',
      'answers': [
        {
          'text': 'Permite escoger el número de cuotas a las que quieres diferir el monto de tus compras',
          'score': 10
        },
        {'text': 'Monto total disponible para financiar pagos', 'score': -2},
        {'text': 'Codigo para usar en el cajero', 'score': -2},
        {'text': 'Cantidad que se puede retirar en efectivo', 'score': -2},
      ],
    },
    {
      'questionText': ' ¿Que es la fecha de corte?',
      'answers': [
        {
          'text': 'Es el día del mes en el que el banco cierra tu cuenta con todos los gastos que realizaste durante los últimos 30 días',
          'score': 10
        },
        {'text': 'Fecha de expiracion de la tarjeta', 'score': -2},
        {'text': 'Fecha limite de pago', 'score': -2},
        {'text': 'Cuando la tarjeta no tiene fondos', 'score': -2},
      ],
    },
    {
      'questionText': ' ¿Que es la fecha de pago?',
      'answers': [
        {
          'text': 'Día que te da el banco para pagar tu deuda sin cobrarte ningún interés',
          'score': 10
        },
        {'text': 'Cantidad maxima de operaciones', 'score': -2},
        {'text': 'Fecha limite de pago', 'score': 10},
        {'text': 'Cantidad que se puede retirar en efectivo', 'score': -2},
      ],
    },
    {
      'questionText': ' ¿Que es el cashback?',
      'answers': [
        {
          'text': 'Sistema mediante el cual una persona que hace una compra puede recibir una parte del importe de vuelta',
          'score': 10
        },
        {'text': 'Cantidad maxima de operaciones', 'score': -2},
        {'text': 'Fecha limite de pago', 'score': -2},
        {'text': 'Cantidad que se puede retirar en efectivo', 'score': -2},
      ],
    },
  ];

  var questionIndex = 0;
  var totalScore = 0;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    totalScore += score;

    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
    if (questionIndex < questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Credito'),
          leading: new IconButton(
            icon: new Icon(Icons.ac_unit),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Color.fromARGB(255, 254, 216, 45),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: questionIndex < questions.length
              ? Quiz(
                  answerQuestion: answerQuestion,
                  questionIndex: questionIndex,
                  questions: questions,
                ) //Quiz
              : Result(totalScore, resetQuiz),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
