import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/widgets/text.dart';

class bottomCraftMan extends StatelessWidget {
  const bottomCraftMan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      //color: Colors.pink,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textWidget(text: "Craft Man House"),
                Text('520 N Decudry Awe Los Angeless',style: TextStyle(fontSize:17,fontWeight: FontWeight.bold),),
                SizedBox(height: 7,),
                Row(children:const [
                  Icon(Icons.car_crash,color: Colors.yellow,),
                  SizedBox(width: 5,),
                  Text("4 cars",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
                  SizedBox(width: 10,),
                  Icon(Icons.car_crash,color: Colors.yellow,),
                  SizedBox(width: 5,),
                  Text("4 cars",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
                  SizedBox(width: 10,),
                  Icon(Icons.car_crash,color: Colors.yellow,),
                  SizedBox(width: 5,),
                  Text("4 cars",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),)
                ],)
              ])),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                height: 55,
                width: 55,
                color: Colors.blue.withOpacity(0.25),
                )
        ],
      ),
      );
  }
}
