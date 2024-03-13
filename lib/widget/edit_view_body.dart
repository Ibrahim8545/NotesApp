import 'package:flutter/material.dart';
import 'package:notesapp/widget/custom_appbar.dart';
import 'package:notesapp/widget/cutsom_text_field.dart';


class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const  Padding(
      padding:   EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
           SizedBox(height: 50,),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          CustomTextField(hint: 'Title'),
           SizedBox(height: 16,),
          CustomTextField(hint: 'Content',maxLines: 5,)
          
        ],
      ),
    );
  }
}