import 'package:flutter/material.dart';

class Categor extends StatelessWidget {
  const Categor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 70,
      width: double.infinity,
      //color: Colors.pink,
      child:  SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  height: 55,
                  //width: 90,
                  child: Center(child: Text("House",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                ),
                SizedBox(width: 4,),
            Categories(text: "Appartment"),
            Categories(text: "Plot"),
            Categories(text: "Floor"),
          ],
        ),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    Key? key, required this.text,
  }) : super(key: key);
  final String text;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      height: 55,
      //width: 90,
      child: Center(child: Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.25),
        borderRadius: BorderRadius.circular(15)),
    );
  }
}