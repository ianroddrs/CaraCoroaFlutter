import 'package:cara_coroa/Resultado.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _exibirResultado() {
    List<String> _moeda = ['cara', 'coroa'];
    String _moedaSorteada = _moeda[Random().nextInt(_moeda.length)];

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Resultado(_moedaSorteada)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff61bd86),
        // backgroundColor: Color.fromRGBO(255, 204, 128, 1),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: Image.asset('assets/img/logo.png'),
              ),
              GestureDetector(
                  child: Image.asset('assets/img/botao_jogar.png'),
                  onTap: () => _exibirResultado())
            ],
          ),
        ));
  }
}
