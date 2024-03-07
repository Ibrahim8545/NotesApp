import 'package:flutter/material.dart';
import 'package:notesapp/views/add_note_button_sheet.dart';
import 'package:notesapp/widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
          showModalBottomSheet(
            context: context,
           builder:(context)
           {
            return NotesModelButton();

           } 
           );
        },
        child: const Icon(Icons.add),
        ),
      body:const NotesViewBody() ,
    );
  }
}


