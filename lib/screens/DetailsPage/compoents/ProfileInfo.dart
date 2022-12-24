import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/widgets/circleAvatar.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Expanded(
           child: Row(children: [
            circleAvator(radius: 30, image: 'assets/moiz1.jpg'),
           Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Rabeecaa Tetha",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("General Manager At England",style: TextStyle(fontSize: 15),),
           ],),
           ],),
         ),
        
         Container(
          //margin: EdgeInsets.symmetric(horizontal: 12),
          height: 45,
          width: 90,
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

