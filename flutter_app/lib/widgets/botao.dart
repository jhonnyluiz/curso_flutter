import 'package:flutter/material.dart';

class ExibirBotao extends StatelessWidget {

  String btnName;
  Function callback;


  ExibirBotao({this.btnName, this.callback});

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.all(3),
      height: 50,
      child: FlatButton(
        onPressed: (){callback();},
        color: Colors.blue,
        child: Text(
          btnName != null && btnName != '' ? btnName: 'Name not found',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      )
    );
  }
}