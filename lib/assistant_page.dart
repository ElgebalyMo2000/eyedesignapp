import 'package:flutter/material.dart';

import 'custom_button.dart';

class Assistantpage extends StatefulWidget {
  const Assistantpage({super.key});

  @override
  State<Assistantpage> createState() => _AssistantpageState();
}

class _AssistantpageState extends State<Assistantpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/Home Background..png'),fit: BoxFit.fill,),
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                Row(
                 children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), 
                      color: Colors.grey.withOpacity(.4),
                    ),
                    child: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back),color: Colors.white,)),
                  
                 ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                
                Text('Assistant Mode',style: TextStyle(fontWeight: FontWeight.w900 ,fontSize: 47,color: Colors.white),),
                SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                Container(
                  width: double.infinity,
                  //height: double.infinity,
         
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(50),topRight: Radius.circular(50) ),
                    color: Color.fromARGB(255, 250, 250, 250),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 1,),
                      Row(
                        children: [
                          Image.asset('assets/logo3.png',scale:5,fit: BoxFit.fitHeight,),
                          SizedBox(width: 5,),
                          Text('BeMyGuide',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Color.fromARGB(255,180,31,87))),
                        ],
                      ),
                      CustomButton3(onTap: (){}, text: 'Bluetooth',icon:Icons.bluetooth),
                      SizedBox(height: 20,),
                      CustomButton3(onTap: (){}, text: 'Video Call',icon: Icons.video_call,),
                      Image.asset('assets/Header.png',scale:1,fit: BoxFit.fill,opacity: AlwaysStoppedAnimation(.3),),
                      
                     
                      
                    
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