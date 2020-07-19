import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BigTitle extends StatelessWidget {
  String title;
  double size;
  BigTitle(String title, double size) {
    this.title = title;
    this.size = size;
  }
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: size,
        fontStyle: FontStyle.normal,
        color: Colors.purple[600],
      ),
    );
  }
}