import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TermsCheckBox extends StatefulWidget {
  bool enabled;
  TermsCheckBox(bool enabled) {
    this.enabled = enabled;
  }
  @override
  CheckBox createState() {
    return CheckBox(enabled);
  }
}

class CheckBox extends State<TermsCheckBox> {
  @override
  bool enabled;

  CheckBox(bool enabled) {
    this.enabled = enabled;
  }

  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: enabled,
      onChanged: (bool value) {
        setState(() {
          enabled = value;
        });
      },
      title: new Text(
        'He leído y acepto los términos y condiciones de privacidad', 
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
      controlAffinity: ListTileControlAffinity.leading,
      activeColor: Colors.red,
    );
  }
}
