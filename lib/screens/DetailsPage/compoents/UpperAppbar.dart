import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/widgets/text.dart';


class upperAppBAr extends StatelessWidget {
  const upperAppBAr({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      textWidget(text: "Details"),
      Container(height: 50,width: 50,
      child: Icon(Icons.arrow_back),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.25),
        borderRadius: BorderRadius.circular(12)),
      )
    ],);
  }
}