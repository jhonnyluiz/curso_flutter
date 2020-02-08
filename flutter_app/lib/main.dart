import 'package:flutter/material.dart';
import 'package:flutter_app/paginas/HomeDetran.dart';
import 'package:flutter_app/paginas/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JLC Home',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeDetran(title: 'Aplicação de Teste'),
    );
  }
}