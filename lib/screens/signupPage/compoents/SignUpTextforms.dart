import 'package:flutter/material.dart';



class TextfieldsSignUp extends StatelessWidget {
  const TextfieldsSignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
              SignUpTextforms(hinttext: "FullName",labeltext: "FullName"),
              SizedBox(height: 10,),
              SignUpTextforms(hinttext: "NickName",labeltext: "NickName"),
              SizedBox(height: 10,),
              SignUpTextforms(hinttext: "DateOfBirth",labeltext: "DateOfBirth"),
              SizedBox(height: 10,),
              SignUpTextforms(hinttext: "Email",labeltext: "Email"),
              SizedBox(height: 10,),
              SignUpTextforms(hinttext: "Gender",labeltext: "Gender"),
      ],);
  }
}

class SignUpTextforms extends StatelessWidget {
  const SignUpTextforms({
    Key? key, required this.hinttext, required this.labeltext,
  }) : super(key: key);
  final String hinttext;
  final String labeltext;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.1),
                          //focusColor: Colors.grey,
                                  border: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(
                                    color: Colors.white.withOpacity(0.1),
                                    width: 0.1
                                    ),
                                  borderRadius: BorderRadius.circular(20.0),
                                    ),                    focusedBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(
                                      color: Colors.white.withOpacity(0.1),
                                      width: 0.1
                                      ),
                                    borderRadius: BorderRadius.circular(20.0),
                                     ),
                                    hintText: hinttext,
                                    //make hint text
                                    hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontFamily: "verdana_regular",
                                    fontWeight: FontWeight.w400,
                                    ),
                                    //create lable
                                    labelText: labeltext,
                                    //lable style
                                    labelStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontFamily: "verdana_regular",
                                    fontWeight: FontWeight.w400,
                                    ),
              ),);
  }
}