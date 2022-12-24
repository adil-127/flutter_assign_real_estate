import 'package:flutter/material.dart';

class TextForms extends StatefulWidget {
  const TextForms({
    Key? key,
  }) : super(key: key);

  @override
  State<TextForms> createState() => _TextFormsState();
}

class _TextFormsState extends State<TextForms> {
  //for ontap vidible password
    ValueNotifier<bool> _obsecure = ValueNotifier<bool>(true);
    void dispose(){
      super.dispose();
      _obsecure.dispose();
      
    } 
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController passs = TextEditingController();
     String Email = '';
    String pass = '';

     isLogin(){
      if(email.text.contains("moiz@gmail.com") && passs.text.contains('12345')){
        print("Login success");
      }else{
        print("Try again");
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
      child: Column(
        children: [
          TextFormField(
            controller: email,
            onSaved: (newValue){
              Email = email.text.toString();
            } ,
            decoration: InputDecoration(
                  focusColor: Colors.grey,
                  //add prefix icon
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.grey, width: 0.1),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  fillColor: Colors.grey,
                  
                  hintText: "Email",
                  
                  //make hint text
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontFamily: "verdana_regular",
                    fontWeight: FontWeight.w400,
                  ),
                  
                  //create lable
                  labelText: 'Email',
                  //lable style
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontFamily: "verdana_regular",
                    fontWeight: FontWeight.w400,
                  ),
                ),),
                SizedBox(height: 15,),
                TextFormField(
                  controller: passs,
                  onSaved: (value){
                    pass = passs.text.toString();
                  },
                  obscureText: true,
            decoration: InputDecoration(
                  focusColor: Colors.grey,

                    suffixIcon: InkWell(
                      onTap: () {
                        //onpress false but initial true
                       setState(() {
                         _obsecure.value = !_obsecure.value;
                       });
                      },
                      child: Icon(_obsecure.value ? Icons.visibility_off :Icons.visibility)
                      ),
                    suffixIconColor: Colors.black,

                  //add prefix icon
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.grey, width: 0.1),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  fillColor: Colors.grey,
                  
                  hintText: "Password",
                  
                  //make hint text
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontFamily: "verdana_regular",
                    fontWeight: FontWeight.w400,
                  ),
                  
                  //create lable
                  labelText: 'Password',
                  //lable style
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontFamily: "verdana_regular",
                    fontWeight: FontWeight.w400,
                  ),
                ),),
        ],
      ),
    );
  }
}
/**  TextForms({
    super.key,
   // setIcon = false,
     //required IconData icon ,  required this.hinttextEmail, required this.labeltextEmail, required this.hinttextpassword, required this.labeltextPasswod,
  });

    // // ignore: prefer_typing_uninitialized_variables
    // bool? setIcon;
    // var icon;
    // final String hinttextEmail;
    // final String labeltextEmail;
    // final String hinttextpassword;
    // final String labeltextPasswod;*/