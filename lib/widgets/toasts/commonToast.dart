import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class CommonToast {
  CommonToast(String message, BuildContext context) {
    Toast.show(
      message,
      context,
      duration: Toast.LENGTH_LONG,
      gravity: Toast.CENTER,
      backgroundColor: Colors.yellow,
      textColor: Colors.white,
    );
  }
}
