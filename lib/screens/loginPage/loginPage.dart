
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/loginPage/compoents/RememberMe.dart';
import 'package:flutter_application_1/screens/loginPage/compoents/textForms.dart';
import 'package:flutter_application_1/screens/signupPage/signUpPage.dart';
import 'package:flutter_application_1/screens/widgets/ContainerButton.dart';
import 'package:flutter_application_1/screens/widgets/circleAvatar.dart';
import 'package:flutter_application_1/screens/widgets/text.dart';

class LoginPage extends StatefulWidget {
   LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    TextForms text = TextForms();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                     icon: const Icon(Icons.arrow_back,size: 25,color: Colors.black,)),
                ),
          
                const SizedBox(height: 30,),
                const circleAvator(radius: 75,image: 'assets/login.jpeg'),
          
                const SizedBox(height: 25,),
                const textWidget(text: "Login To Your Account",size:40),
          
                const TextForms(),
          
                const RemeberedMe(),
          
                 Padding(
                  padding: EdgeInsets.all(15),
                  child: ContainerButton(text: "Login",onpress: () {
                  },),
                ),
          
                const Text("Forgot Your Password?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blue),),
                const SizedBox(height: 13,),
          
                const Text("Or continue With",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
          
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:const [
                   circleAvator(radius: 23, image: "assets/fb.jpg"),
                   circleAvator(radius: 23, image: "assets/google.png"),
                   circleAvator(radius: 23, image: "assets/apple.png"),
                ]),),
          
              Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't Have an Account? ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) => SignUpPage())));
            },
            child: const Text("Sign Up",style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold))),
                ],),
          
              ],),
          ),
        )),
    );
  }
}

