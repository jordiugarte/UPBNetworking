import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  String label;
  bool secret;
  TextInputType type;
  TextEditingController controller = new TextEditingController();
  LoginField(String label, bool secret, TextInputType type) {
    this.label = label;
    this.secret = secret;
    this.type = type;
  }

  TextEditingController getController() {
    return controller;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(label, style: TextStyle(fontSize: 15)),
        ),
        TextField(
          controller: controller,
          textAlign: TextAlign.center,
          obscureText: secret,
          keyboardType: type,
          style: TextStyle(
            fontSize: 16,
          ),
          decoration: InputDecoration(
            border: new OutlineInputBorder(
              borderRadius: const BorderRadius.all(const Radius.circular(30)),
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
