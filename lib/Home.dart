import 'package:cara_coroa/Resultado.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _exibirResultado(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Resultado())
    );
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
            Image.asset('assets/img/logo.png'),
            GestureDetector(
              child: Image.asset('assets/img/botao_jogar.png'),
              onTap: ()=>_exibirResultado()
            )
          ],
        ),
      )
    );
  }
}
