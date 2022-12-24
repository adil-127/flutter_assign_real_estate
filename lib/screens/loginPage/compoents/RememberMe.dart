import 'package:flutter/material.dart';

class RemeberedMe extends StatelessWidget {
  const RemeberedMe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 100),
      child: Row(
        children: [
          Container(
            height: 28,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 2,color: Colors.blue)),
            child: Icon(Icons.check,color: Colors.white,)),
            SizedBox(width: 30,),
            Text("Remember me",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight:FontWeight.bold),)
        ]),);
  }
}

