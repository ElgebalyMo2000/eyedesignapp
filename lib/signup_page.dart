import 'package:eyedesignapp/custom_button.dart';
import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/SignUpBackground.png'),fit: BoxFit.fill,),
          ),
          child: Center(
            child: Column(
              children: [
               // SizedBox(height: 5,),
                Image.asset('assets/logo3.png',scale:2,fit: BoxFit.fitHeight,height:MediaQuery.of(context).size.height*.35,),
                Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 45,color: Colors.white),),
                SizedBox(height: 5,),
                Container(
                  width: double.infinity,
                  //height: double.infinity,
         
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight: Radius.circular(40) ),
                    color: Color.fromARGB(255, 250, 250, 250),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 25,),
                      CustomTextField(hintText: 'User Name',icon: Icon(Icons.person),),
                      SizedBox(height: 10,),
                      CustomTextField(hintText: 'Email',icon: Icon(Icons.email),),
                      SizedBox(height: 10,),
                      CustomTextField(hintText: 'Password',icon: Icon(Icons.lock),),
                      SizedBox(height: 10,),
                      CustomTextField(hintText: 'Phone Number',icon: Icon(Icons.phone),keyboardType: TextInputType.phone,),
                      SizedBox(height: 25,),
                      CustomButton(onTap: (){}, text: 'Sign up'),
                    
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
