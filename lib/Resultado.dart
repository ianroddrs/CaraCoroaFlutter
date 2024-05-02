import 'package:flutter/material.dart';
import 'package:cara_coroa/Home.dart';

class Resultado extends StatefulWidget {
  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Image.asset('assets/img/moeda_cara.png'),
            ),
            GestureDetector(
              child: Image.asset('assets/img/botao_voltar.png'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              },
            )
          ],
        ),
      )
    );
  }
}
