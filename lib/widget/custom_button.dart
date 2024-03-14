import 'package:flutter/material.dart';
import 'package:notesapp/widget/constants.dart';

class CustomButton extends StatelessWidget {
 CustomButton({super.key, this.onTap});
void Function()? onTap;
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
        child: const Center(
          child: Text(
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
