import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';
class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
                Text('Sign In',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 45,color: Colors.white),),
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
                      
                     
                      CustomTextField(hintText: 'Email',icon: Icon(Icons.email),),
                      SizedBox(height: 10,),
                      CustomTextField(hintText: 'Password',icon: Icon(Icons.lock),),
                      SizedBox(height: 25,),
                      CustomButton(onTap: (){}, text: 'Sign in'),
                      SizedBox(height: 10,),
                       Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        'Don\'t hava account ? ',
                        style: TextStyle(color: Colors.black),
                      ),
                      GestureDetector(
                        onTap: () {
                          
                        },
                        child: Text(
                          ' Sign Up',
                          style: TextStyle(color: Colors.pink),
                        ),
                      ),
                    ],
                  ),
                  
                    
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