import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:upbnetworking/constants/connectionConstants.dart';
import 'package:upbnetworking/widgets/toasts/commonToast.dart';

class LoginService {
  BuildContext context;
  TextEditingController controlCode;
  TextEditingController controlPassword;
  LoginService(BuildContext context, TextEditingController controlCode,
      TextEditingController controlPassword) {
    this.context = context;
    this.controlCode = controlCode;
    this.controlPassword = controlPassword;
  }
  Future<List> getUser() async {
    final response = await http.post(ConnectionConstants.HOST_URL_LOGIN, body: {
      ConnectionConstants.DB_USER_CODE: controlCode.text,
      ConnectionConstants.DB_USER_PASSWORD: controlPassword.text,
    });

    if (response.body == ConnectionConstants.MSG_CORRECT_LOGIN) {
      CommonToast("Bienvenido", context);
    } else if (response.body == ConnectionConstants.MSG_INCORRECT_LOGIN) {
      CommonToast("Datos incorrectos", context);
    } else {
      CommonToast("Error de coneccion", context);
    }
  }
}
