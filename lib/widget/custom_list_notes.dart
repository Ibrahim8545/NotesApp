import 'package:flutter/material.dart';
import 'package:notesapp/widget/custom_note_item.dart';

class CustomNotesList extends StatelessWidget {
  const  CustomNotesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:16.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
      itemBuilder:(context,index)
      {

        return const Padding(
          padding:  EdgeInsets.symmetric(vertical:4.0),
          child:  NoteItem(),
        );
      } ),
    );
  }
}