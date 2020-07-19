import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmallTitle extends StatelessWidget {
  String title;
  double size;
  SmallTitle(String title, double size) {
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
        color: Colors.grey,
      ),
    );
  }
}