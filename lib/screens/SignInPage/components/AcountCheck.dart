import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/loginPage/loginPage.dart';
import 'package:flutter_application_1/screens/signupPage/signUpPage.dart';

class AcountChecks extends StatelessWidget {
  const AcountChecks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 70),
      padding: EdgeInsets.symmetric(vertical: 15),
      height: 75,
    width: double.infinity,
    //color: Colors.black,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      Row(children: [
        Text("Don't Have an Account? ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        InkWell(
          onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context) => SignUpPage() ));
          },
          child: Text("Sign Up",style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold))),
      ],),
      Row(children: [
        Text("Already Have an Account? ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context) => LoginPage() ));
          },
          child: Text("Login",style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold))),
      ],)
    ]),
    );
  }
}