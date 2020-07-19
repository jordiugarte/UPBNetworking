import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:upbnetworking/widgets/registerPage/registerForm.dart';
import 'package:upbnetworking/widgets/titles/bigTitle.dart';

class RegisterPage extends StatelessWidget {
  BuildContext context;
  RegisterPage(BuildContext context) {
    this.context = context;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Container(
              margin: const EdgeInsets.all(40.0),
              child: BigTitle("Registrarse", 50),
            ),
            Container(
              width: double.infinity,
              height: 800,
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: RegisterForm(),
            ),
          ]),
        ),
      ),
    );
  }
}
