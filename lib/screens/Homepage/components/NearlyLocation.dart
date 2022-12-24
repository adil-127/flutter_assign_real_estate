import 'package:flutter/material.dart';

class NearlyLocation extends StatelessWidget {
  const NearlyLocation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text("Nearly Your Location",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold),),
      Container(height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.24),
        borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Container(
              height: 90,
              width: 120,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/house3.jfif"),fit: BoxFit.cover),
          color: Colors.grey,
          borderRadius: BorderRadius.circular(12)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("CRAFTMAN HOUSE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),),
        Text("craftman house fully loaded",style: TextStyle(fontSize: 15,color: Colors.black),),
        Row(
          children: [
              Icon(Icons.car_crash,color: Colors.yellow,),
                  SizedBox(width: 2,),
                  Text("4 cars",style: TextStyle(fontSize:13,fontWeight: FontWeight.bold),),
                  SizedBox(width: 10,),
                  Icon(Icons.car_crash,color: Colors.yellow,),
                  SizedBox(width: 2,),
                  Text("4 cars",style: TextStyle(fontSize:13,fontWeight: FontWeight.bold),),
                  SizedBox(width: 10,),
                  Icon(Icons.car_crash,color: Colors.yellow,),
                  SizedBox(width: 2,),
                  Text("4 cars",style: TextStyle(fontSize:13,fontWeight: FontWeight.bold),)
              ],),
          ]),
            ),
      ]))
      ],);
  }
}

