import 'package:flutter/material.dart';
import 'package:notesapp/widget/cutsom_text_field.dart';

class NotesModelButton extends StatelessWidget {
  const NotesModelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 32,),
      
          CustomTextField(),
      
        ],
      ),
    );
  }
}

