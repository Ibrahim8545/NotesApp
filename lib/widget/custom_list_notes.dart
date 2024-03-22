import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/note/note_model.dart';
import 'package:notesapp/widget/custom_note_item.dart';

class CustomNotesList extends StatelessWidget {
  const CustomNotesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {

        
        List<NotesModel>notes=BlocProvider.of<NotesCubit>(context).notes!;
        
        
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListView.builder(
            itemCount: notes.length ,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return  Padding(
                  padding:const  EdgeInsets.symmetric(vertical: 4.0),
                  child: NoteItem(
                    note:notes[index] ,
                  ),
                );
              }),
        );
      },
    );
  }
}
