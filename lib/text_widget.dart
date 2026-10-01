import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  TextWidget(this.text, {super.key});
  String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: Colors.white, fontSize: 28));
  }
}
