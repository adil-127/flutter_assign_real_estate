import 'package:flutter/material.dart';

class textWidget extends StatelessWidget {
  const textWidget({
    Key? key, required this.text,  this.size = 30,
  }) : super(key: key);
  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),);
  }
}