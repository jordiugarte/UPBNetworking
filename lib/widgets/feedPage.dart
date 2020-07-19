import 'package:flutter/material.dart';
import 'package:upbnetworking/loginPage.dart';
import 'package:upbnetworking/registerPage.dart';
import 'package:upbnetworking/widgets/buttons/primaryButton.dart';

void main() => runApp(InitialPage());

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void goToPage(Object page) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
    }

    PrimaryButton loginButton =
        new PrimaryButton("Iniciar Sesión", ButtonAction.GO_TO_PAGE);
    PrimaryButton registerButton =
        new PrimaryButton("Registrarse", ButtonAction.GO_TO_PAGE);
    loginButton.setDestiny(LoginPage(context));
    registerButton.setDestiny(RegisterPage(context));

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30, top: 20),
                alignment: FractionalOffset.bottomCenter,
                child: loginButton,
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30, top: 20),
                alignment: FractionalOffset.bottomCenter,
                child: registerButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
