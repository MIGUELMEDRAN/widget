import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String text;
  const TitleText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: size.width * 0.05
      ),
    );
  }
}