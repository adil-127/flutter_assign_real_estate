import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({
    Key? key, required this.text, required this.onpress,
  }) : super(key: key);
  final String text;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15)),
          child: Center(child: Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
      ),
    );
  }
}

