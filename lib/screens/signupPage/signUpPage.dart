import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/loginPage/compoents/textForms.dart';
import 'package:flutter_application_1/screens/signupPage/compoents/SignUpTextforms.dart';
import 'package:flutter_application_1/screens/signupPage/compoents/profilePic.dart';
import 'package:flutter_application_1/screens/widgets/ContainerButton.dart';
import 'package:flutter_application_1/screens/widgets/circleAvatar.dart';
 

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                             icon: const Icon(Icons.arrow_back,size: 25,color: Colors.black,)),
                             const SizedBox(width: 7,),
                             const Text("Fill Your profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)
                        ],
                      ),
                    ),
                    const SizedBox(height: 15,),
                    const profilePic(),
                    const SizedBox(height: 10,),
                    const TextfieldsSignUp(),
                      const SizedBox(height: 25,),
                       ContainerButton(text: "Continue",onpress: (){},)
                   // circleAvator(radius: 70, image: )
              ],),
          ),
        )),
    );
  }
}

