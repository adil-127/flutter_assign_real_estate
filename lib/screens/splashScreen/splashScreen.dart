import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/SignInPage/SignInPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {

   late AnimationController animationController;
  @override
  void dispose() {
    super.dispose();
    // TODO: implement dispose
    animationController.dispose();
  }

  @override
  void initState(){
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
      )..repeat();

      Timer(const Duration(seconds: 6),
       () => Navigator.push(context, MaterialPageRoute(builder: ((context) => const SignInPage()))));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                AnimatedBuilder(animation: animationController,
                child: const SizedBox(
                  height: 200,
                  width: 200,
                  child: Image(image: AssetImage('assets/virus.png')),
                ),
                 builder: (BuildContext context, Widget? child){
                  return Transform.rotate(
                    angle: animationController.value * 2.0,
                    child:child ,);
                 }),
                 SizedBox(height: MediaQuery.of(context).size.height * .08,),
                 Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                       Text("MUHAMMAD MOIZ KHAN",style: TextStyle(fontSize: 25,color: Colors.blue,fontWeight: FontWeight.bold),),
                       Text("UI DESIGN ASSIGNMENT",style: TextStyle(fontSize: 25,color: Colors.blue,fontWeight: FontWeight.bold),),
                       Text("JAWAN PAKISTAN",style: TextStyle(fontSize: 25,color: Colors.blue,fontWeight: FontWeight.bold),),
                    ],)),
          ],)),
      );
  }
}