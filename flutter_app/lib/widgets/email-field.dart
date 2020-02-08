import 'package:flutter/material.dart';

class EmailFieldText extends StatelessWidget {
  TextEditingController emailController;

  EmailFieldText({this.emailController});

  @override
  Widget build(BuildContext context) {
    String labelEmail = 'E-mail';

    return Container(
      child: TextField(
        controller: emailController,
        obscureText: false,
        decoration: InputDecoration(border: OutlineInputBorder(), labelText: labelEmail),
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}
