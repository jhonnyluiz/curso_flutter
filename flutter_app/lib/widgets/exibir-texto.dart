import 'package:flutter/material.dart';

class ExibirTexto extends StatelessWidget {

  String texto;

  ExibirTexto({this.texto});

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Text(
          texto == null || texto == '' ? "Texto não informado" : texto,
          style: TextStyle(color: Colors.blueAccent, fontSize: 20)
      ),
    );
  }
}