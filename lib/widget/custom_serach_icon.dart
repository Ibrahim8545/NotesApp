import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon});
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 47,
      width: 47,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.06),
        borderRadius:BorderRadius.circular(16) 
        

      ),
      child:  Icon(
        icon,size: 28,
        ),
    );
  }
}