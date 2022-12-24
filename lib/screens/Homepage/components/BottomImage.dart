import 'package:flutter/material.dart';

class BottomImage extends StatelessWidget {
  const BottomImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Best For u",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
        Container(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Images(images: AssetImage("assets/house1.jfif")),
                Images(images: AssetImage("assets/house2.jfif")),
              ],
            ),
          ),
        ),
      ],);
  }
}

class Images extends StatelessWidget {
  const Images({
    Key? key, required this.images,
  }) : super(key: key);
  final AssetImage images;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      height: 290,
      width: 350,
      decoration: BoxDecoration(
        //color: Colors.black,
        borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: images,fit: BoxFit.cover),
        color: Colors.grey,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
          ),
          Container(
            height: 110,
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            width: double.infinity,
            decoration: BoxDecoration(
              //image: DecorationImage(image: AssetImage("assets/house1.jfif"),fit: BoxFit.cover),
        color: Colors.black87.withOpacity(0.7),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("CRAFTMAN HOUSE",style: TextStyle(fontSize: 18,color: Colors.white),),
              Text("craftman house fully loaded",style: TextStyle(fontSize: 18,color: Colors.black),),
              Row(
                children: [
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
            ]),
          ),
        ]),
    );
  }
}

