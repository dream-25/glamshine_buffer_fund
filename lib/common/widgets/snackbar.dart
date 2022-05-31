import 'package:flutter/material.dart';

void showSnackbar(
  BuildContext context,
  String msg,
  Duration duration,
  Color bgColor,
  txtColor,
) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      msg,
      style: TextStyle(color: txtColor),
    ),
    duration: duration,
    backgroundColor: bgColor,
  ));
}
