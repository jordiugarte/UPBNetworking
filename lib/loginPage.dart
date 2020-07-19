import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:upbnetworking/constants/booleanConstants.dart';
import 'package:upbnetworking/registerPage.dart';
import 'package:upbnetworking/widgets/textFields/loginField.dart';
import 'package:upbnetworking/widgets/buttons/primaryButton.dart';
import 'package:upbnetworking/widgets/titles/bigTitle.dart';

class LoginPage extends StatelessWidget {
  LoginField codeField = new LoginField(
      "Código", BooleanConstants.PUBLIC_TEXT_FIELD, TextInputType.number);
  LoginField passwordField = new LoginField(
      "Contraseña", BooleanConstants.PRIVATE_TEXT_FIELD, TextInputType.text);

  BuildContext context;

  LoginPage(BuildContext context) {
    this.context = context;
  }

  @override
  Widget build(BuildContext context) {
    PrimaryButton loginButton =
        new PrimaryButton("Iniciar Sesión", ButtonAction.LOGIN);
    loginButton.setCodeController(codeField.getController());
    loginButton.setPasswordController(passwordField.getController());

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(40.0),
              child: BigTitle("Inicio de Sesión", 40),
            ),
            Center(
              child: Container(
                width: double.infinity,
                height: 450,
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 50),
                      child: codeField,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 40),
                      child: passwordField,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 30, right: 30, top: 40, bottom: 40),
                      alignment: FractionalOffset.bottomCenter,
                      child: loginButton,
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.grey, fontSize: 17.0),
                        children: <TextSpan>[
                          TextSpan(text: '¿No tienes una cuenta? Crea una '),
                          TextSpan(
                            text: 'aquí',
                            style: TextStyle(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        RegisterPage(context)));
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
