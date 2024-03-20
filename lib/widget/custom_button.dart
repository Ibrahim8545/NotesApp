import 'package:flutter/material.dart';
import 'package:notesapp/widget/constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, this.onTap, this.isLoading=false});
void Function()? onTap;
final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        
        //to take all width that will take 
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kPrimaryColor
        ),
        child:  Center(
          child:isLoading?const SizedBox(
            height: 24,
            width: 24,
            child:   CircularProgressIndicator
            (
              color: Colors.black,
            ),
          ) :const Text(
            'Add',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
            ),
        ),
      ),
    );
  }
}
