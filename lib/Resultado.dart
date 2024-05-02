import 'package:flutter/material.dart';
import 'package:cara_coroa/Home.dart';

class Resultado extends StatefulWidget {
  String _moeda;
  Resultado(this._moeda);

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff61bd86),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: Image.asset('assets/img/moeda_${widget._moeda}.png'),
              ),
              GestureDetector(
                child: Image.asset('assets/img/botao_voltar.png'),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ));
  }
}
