import 'package:flutter/material.dart';

class profilePic extends StatelessWidget {
  const profilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 280,
        height: 210,
        color: Colors.white,
        ),
          Positioned(
            left: 40,
            child: Container(
            height: 200,
            width: 200,
            child: Image(image: AssetImage("assets/person.png"),fit: BoxFit.fill,),
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(100)),
          )),
          Positioned(
          bottom: 15,
          right: 25,
          child: Container(
            height: 52,
            width: 52,
            child: Icon(Icons.person,size: 30,color: Colors.white,),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15)),
            
          )),
    ],);
  }
}