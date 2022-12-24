import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/widgets/circleAvatar.dart';

class SignOptions extends StatelessWidget {
  const SignOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     // color: Colors.blue,
      padding: const EdgeInsets.all(5),
      height: MediaQuery.of(context).size.height*0.3,
      width: MediaQuery.of(context).size.height*0.4,
      //margin: EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
           SignInOption(image: "assets/fb.jpg",text: "Continue With Facebook"),
           SignInOption(image: "assets/insta.jpg",text: "Continue With Instagram"),
           SignInOption(image: "assets/twitter.jpg",text: "Continue With Twitter"),
        ],),

    );
  }
}

class SignInOption extends StatelessWidget {
  const SignInOption({
    Key? key, required this.image,required this.text,
  }) : super(key: key);
  final String image;
  final String text;
  //final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.all(12),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(15)),
        child: Row(children: [
          circleAvator(radius: 20, image: image),
          const SizedBox(width: 20,),
          Text(text,style: const TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
          //textWidget(text: "",size: 5.0,),
        ],),
      ),
    );
  }
}



