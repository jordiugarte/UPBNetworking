import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterField extends StatelessWidget {
  String label;
  bool password;
  RegisterField(String label, bool password) {
    this.label = label;
    this.password = password;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text(label),
              ),
            ),
            TextField(
              obscureText: password,
              style: TextStyle(fontSize: 20),
            ),
          ],
        )
      );
  }
}
