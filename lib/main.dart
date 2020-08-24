import 'package:flutter/material.dart';
import 'quizzbrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizzBrain quizzBrain = QuizzBrain();

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

List<Icon> pontucao = [];

class _QuizPageState extends State<QuizPage> {
  void verificarResposta(bool userResposta) {
    bool respostaCerta = quizzBrain.getResposta();
    setState(() {
      if (quizzBrain.limitePerguntas() == true) {
        Alert(
            context: context,
            type: AlertType.info,
            title: 'Chegou ao fim do Quiz',
            desc: 'Não existem mais perguntas.',
            buttons: [
              DialogButton(
                  child: Text('Confirmar'),
                  onPressed: () {
                    setState(() {
                      pontucao.clear();
                      quizzBrain.reset();
                    });
                    Navigator.pop(context);
                  }),
            ]).show();
      } else {
        if (userResposta == respostaCerta) {
          pontucao.add(
            Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        } else {
          pontucao.add(
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }
        quizzBrain.perguntaSeguinte();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizzBrain.getPerguntas(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'Verdade',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                verificarResposta(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'Falso',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.
                verificarResposta(false);
              },
            ),
          ),
        ),
        Row(
          children: pontucao,
        )
      ],
    );
  }
}
