import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upbnetworking/services/loginService.dart';
import 'package:upbnetworking/widgets/registerPage/registerForm.dart';

enum ButtonAction { GO_TO_PAGE, CHANGE_BOOLEAN, LOGIN }

// ignore: must_be_immutable
class PrimaryButton extends StatelessWidget {
  String label;
  RegisterForm registerForm;
  Object destiny;
  BuildContext context;
  ButtonAction action;
  TextEditingController codeController;
  TextEditingController passwordController;

  void setCodeController(TextEditingController codeController) {
    this.codeController = codeController;
  }

  void setPasswordController(TextEditingController passwordController) {
    this.passwordController = passwordController;
  }

  PrimaryButton(String label, ButtonAction action) {
    this.label = label;
    this.action = action;
  }

  void setRegisterForm(Object page) {
    this.registerForm = registerForm;
  }

  void setDestiny(Object destiny) {
    this.destiny = destiny;
  }

  void goTo(Object page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }

  void changeBoolean() {
    registerForm.visibilityEnabled = false;
  }

  void login() {
    LoginService loginService = new LoginService(context, codeController, passwordController);
    loginService.getUser();
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Container(
      width: 200,
      height: 50,
      child: RaisedButton(
        color: Colors.deepPurple,
        textColor: Colors.white,
        disabledColor: Colors.grey,
        disabledTextColor: Colors.black,
        splashColor: Colors.blueAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: () {
          switch (action) {
            case ButtonAction.GO_TO_PAGE:
              goTo(destiny);
              break;
            case ButtonAction.CHANGE_BOOLEAN:
              changeBoolean();
              break;
            case ButtonAction.LOGIN:
              login();
              break;
          }
        },
        child: Text(
          label,
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
    );
  }
}
