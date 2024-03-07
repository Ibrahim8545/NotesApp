import 'package:flutter/material.dart';
import 'package:notesapp/widget/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor:kPrimaryColor ,
      decoration: InputDecoration(
        hintText: 'Title',
        
        border:buildborder(),
        enabledBorder: buildborder(),
        focusedBorder: buildborder(kPrimaryColor)
      ),
    );
    
  }
 OutlineInputBorder buildborder([color]){
  return OutlineInputBorder(
         borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: color ??Colors.white)
 
  );
 }
}