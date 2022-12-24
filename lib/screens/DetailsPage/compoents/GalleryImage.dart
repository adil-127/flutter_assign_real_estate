import 'package:flutter/material.dart';


class GalleryImage extends StatelessWidget {
  const GalleryImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GelleryImages(image: "assets/house2.jfif"),
          GelleryImages(image: "assets/house3.jfif"),
          GelleryImages(image: "assets/house4.jfif"),
          GelleryImages(image: "assets/house5.jfif"),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 5,horizontal: 7),
                height: 60,
                width: 60,
                child: Image.asset("assets/house2.jfif",fit: BoxFit.cover,),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10)
                  ),
              ),
              Positioned(
                top: 21,
                left: 13,
                child: Text("+ 10",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),))
            ],
          )
        ],
      ),
    );
  }
}

class GelleryImages extends StatelessWidget {
  const GelleryImages({
    Key? key, required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5,horizontal: 7),
      height: 60,
      width: 60,
      child: Image.asset(image,fit: BoxFit.cover),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10)
        ),
    );
  }
}

