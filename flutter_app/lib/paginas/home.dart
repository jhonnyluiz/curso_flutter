import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/botao.dart';
import 'package:flutter_app/widgets/email-field.dart';
import 'package:flutter_app/widgets/exibir-texto.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String btnAtualizarDados = 'Atualizar dados';
  String textoExibido = 'E-mail não informado';
  TextEditingController email = new TextEditingController();

//  @override
//  void initState() {
//    email.addListener(setTextoExibido);
//  }

  void setTextoExibido() {
    setState(() {
      if(email.text != null && email.text != '') {
        this.textoExibido = email.text;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        margin: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              EmailFieldText(emailController: email),
              Row(
                children: <Widget>[
                  ExibirBotao(btnName: btnAtualizarDados, callback: () { setTextoExibido(); }),
                  ExibirBotao(btnName: 'Cancelar', callback: () { setTextoExibido(); })
                ],
              ),
              ExibirTexto(texto: textoExibido),
            ],
          ),
        )
      )
    );
  }
}
