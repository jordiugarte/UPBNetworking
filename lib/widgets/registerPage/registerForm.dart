import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upbnetworking/widgets/checkBoxes/termsCheckBox.dart';
import 'package:upbnetworking/widgets/textFields/loginField.dart';
import 'package:upbnetworking/widgets/textFields/registerField.dart';
import 'package:upbnetworking/widgets/titles/smallTitle.dart';

// ignore: must_be_immutable
class RegisterForm extends StatefulWidget {
  bool visibilityEnabled = true;
  @override
  Register createState() {
    return Register();
  }
}

class Register extends State<RegisterForm> {
  bool visibilityEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedOpacity(
          opacity: visibilityEnabled ? 1 : 0,
          curve: Curves.easeInOut,
          duration: Duration(milliseconds: 500),
          child: Form(
            key: GlobalKey<FormState>(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RegisterField("Nombres", false),
                RegisterField("Apellidos", false),
                RegisterField("Correo", false),
                RegisterField("Contraseña", true),
                RegisterField("Repetir contraseña", true),
                Container(
                  margin: const EdgeInsets.all(30),
                  child: LoginField(
                      "Ingresar Código", false, TextInputType.number),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30.0, bottom: 30.0),
                  child: Center(
                    child: Container(
                      width: 200,
                      height: 50,
                      child: RaisedButton(
                        color: Colors.deepPurple,
                        textColor: Colors.white,
                        disabledColor: Colors.grey,
                        disabledTextColor: Colors.black,
                        splashColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {
                          setState(() {
                            visibilityEnabled = false;
                          });
                        },
                        child: Text(
                          "Siguiente",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        AnimatedOpacity(
          opacity: !visibilityEnabled ? 1 : 0,
          curve: Curves.easeInOut,
          duration: Duration(milliseconds: 500),
          child: Form(
            key: GlobalKey<FormState>(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SmallTitle("Nombre completo: ", 20),
                SmallTitle("Carrera: ", 20),
                SmallTitle("Escuela: ", 20),
                TermsCheckBox(false),
                Container(
                  margin: const EdgeInsets.only(top: 30.0, bottom: 30.0),
                  child: Center(
                    child: Container(
                      width: 200,
                      height: 50,
                      child: RaisedButton(
                        color: Colors.deepPurple,
                        textColor: Colors.white,
                        disabledColor: Colors.grey,
                        disabledTextColor: Colors.black,
                        splashColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {
                          setState(() {
                            visibilityEnabled = false;
                          });
                        },
                        child: Text(
                          "Registrar",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
