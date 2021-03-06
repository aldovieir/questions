import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

final int pontuacao;

final void Function() quandoReiniciarQuestionario;

Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

String get fraseResultado {
  if(pontuacao < 8) {
     return 'Parabéns!';
     } else if(pontuacao < 12){
       return 'Você e bom!';
     } else if (pontuacao < 16) {
       return 'Impressionante!';
     } else {
       return 'Nivel JEDI!';
     }
  }


  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Center(
            child: Text(
              fraseResultado,
                            style: TextStyle(fontSize: 28),
              textAlign: TextAlign.center,
            ),
          ),
          FlatButton(
            child: Text('Reiniciar',
            style: TextStyle(fontSize: 18),
            ),
            textColor: Colors.blue,
            onPressed: quandoReiniciarQuestionario,
          ),
        ],
      ),
    );
  }
}
