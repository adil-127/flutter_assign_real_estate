import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/DetailsPage/compoents/BottomCraftMan.dart';
import 'package:flutter_application_1/screens/DetailsPage/compoents/GalleryImage.dart';
import 'package:flutter_application_1/screens/DetailsPage/compoents/ProfileInfo.dart';
import 'package:flutter_application_1/screens/DetailsPage/compoents/UpperAppbar.dart';
import 'package:flutter_application_1/screens/DetailsPage/compoents/price.dart';
import 'package:flutter_application_1/screens/widgets/circleAvatar.dart';
import 'package:flutter_application_1/screens/widgets/text.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              upperAppBAr(),
        
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height:MediaQuery.of(context).size.height*0.35,
                width: double.infinity,
                child: Image(image: AssetImage("assets/house1.jfif"),fit: BoxFit.fill),
              decoration: BoxDecoration(
                //color: Colors.blue,
                borderRadius: BorderRadius.circular(15)),
              ),
              bottomCraftMan(),
        
              ProfileInfo(),
                SizedBox(height: 7,),
                Text("General Manager At EnglandGeneral Manager At EnglandGeneral Manager At EnglandGeneral Manager At EnglandGeneral Manager At EnglGeneral Manager At EnglandGeneral Manager At England"
                ,style: TextStyle(fontSize: 15),),
                SizedBox(height: 10,),
                Text("Gallery",style: TextStyle(fontSize: 23,color: Colors.black,fontWeight: FontWeight.bold),),
        
                GalleryImage(),
                SizedBox(height: 5,),
                Text("price",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),),
               SizedBox(height:10,),
                price()
            ],
          ),
        ),
      ),
    );
  }
}

