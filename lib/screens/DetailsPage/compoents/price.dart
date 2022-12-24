import 'package:flutter/material.dart';

class price extends StatelessWidget {
  const price({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(child: Text("RS: 444444",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),)),
       Container(
        //margin: EdgeInsets.symmetric(horizontal: 62),
        height: 45,
        width: 140,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.call,color: Colors.white,),
            SizedBox(width: 5,),
            Text("Call",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black),
        )
    ],);
  }
}

