// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  
   // ignore: use_key_in_widget_constructors
   CustomTextField({this.hintText,this.onChanged,this.obscureText=false,this.icon,this.keyboardType});
  String? hintText;
  Function(String)? onChanged;
  bool? obscureText;
  Icon? icon;
  TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width*0.8,
      margin: EdgeInsets.symmetric(vertical: 1),
      padding: EdgeInsets.symmetric(vertical: 1),
      child: TextFormField(
                keyboardType:keyboardType,
        
                obscureText:obscureText! ,
                validator: (value) {
                  if(value!.isEmpty)
                  return 'field is requried';
                },
                onChanged:onChanged ,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  prefixIcon: icon,
                  hintText: hintText,
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  
                  border:  OutlineInputBorder(
                    borderSide:BorderSide(color: Colors.black.withOpacity(.5),),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  enabledBorder:  OutlineInputBorder(
                    borderSide:BorderSide(color: Colors.black.withOpacity(.5),),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  )
                ),
                
                style: TextStyle(color: Colors.black),
              ),
    );
  }
}