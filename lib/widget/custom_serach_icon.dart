import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 47,
      width: 47,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.06),
        borderRadius:BorderRadius.circular(16) 
        

      ),
      child:const  Icon(
        Icons.search,size: 28,
        ),
    );
  }
}