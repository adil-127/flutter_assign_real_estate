import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/SignInPage/components/AcountCheck.dart';
import 'package:flutter_application_1/screens/SignInPage/components/SignInOption.dart';
import 'package:flutter_application_1/screens/widgets/ContainerButton.dart';
import 'package:flutter_application_1/screens/widgets/circleAvatar.dart';
import 'package:flutter_application_1/screens/widgets/text.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Icon(Icons.arrow_back,size: 25,color: Colors.black,)),
              SizedBox(height: 20),
              circleAvator(radius: 87,image: 'assets/signin.jpeg'),

                SizedBox(height: 20,),
                textWidget(text: "Let's You In",size:40),

                SizedBox(height: 25,),
                SignOptions(),

                SizedBox(height: 15,),
                Row(children: [
                  Text("__________________________"),
                  Text(" or ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text("__________________________"),
                ],),

                SizedBox(height: 20,),
                ContainerButton(text: "Sign In with password",onpress: (){},),
                
                SizedBox(height: 5,),
                AcountChecks(),
            ]),
        )),
    );
  }
}



