import 'package:flutter/material.dart';

class circleAvator extends StatelessWidget {
  const circleAvator({
    Key? key, required this.radius, required this.image,
  }) : super(key: key);

  final double radius;
  final String image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: radius,
      child: Image.asset(image,fit: BoxFit.cover,),);
  }
}