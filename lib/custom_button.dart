  // ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({required this.onTap,required this.text}) ;
  String text;
  VoidCallback? onTap ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.pinkAccent.withOpacity(.8),
          
        ),
        width: MediaQuery.of(context).size.width*0.5,
        height: 60,
        child:  Center(
          child: Text(text,
              style: const TextStyle(
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              )),
        ),
      ),
    );
  }
}
class CustomButton2 extends StatelessWidget {
   CustomButton2({required this.onTap,required this.text}) ;
  String text;
  VoidCallback? onTap ;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          border: Border.all(color: Colors.black.withOpacity(.4)),
          
        
          
        ),
        width: MediaQuery.of(context).size.width*0.9,
        height: 60,
        child:  Center(
          child: Text(text,
              style: const TextStyle(
                fontSize: 35,
                color: Color.fromARGB(255,180,31,87),
                fontWeight: FontWeight.w700,
              )),
        ),
      ),
    );
  }
}


class CustomButton3 extends StatelessWidget {
   CustomButton3({required this.onTap,required this.text, this.icon}) ;
  String text;
  VoidCallback? onTap ;
  IconData? icon;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          border: Border.all(color: Colors.black.withOpacity(.4)),
          
        
          
        ),
        width: MediaQuery.of(context).size.width*0.9,
        height: 60,
        child:  Center(
          child: Row(
            children: [
              SizedBox(width: 7,),
              Icon(icon,color: Colors.grey.withOpacity(.6),size: 30,),
              SizedBox(width: 7,),
              Text(text,
                  style: const TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255,180,31,87),
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}


