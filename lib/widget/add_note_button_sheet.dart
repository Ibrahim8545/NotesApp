import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notesapp/cubits/add_note_cubit/notes_cubit.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/widget/add_note_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesModelButton extends StatelessWidget {
  const NotesModelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print('error');
          }
          if (state is AddNoteSuccess) {
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is  AddNotesLoading ? true:false,
            child:   Padding(
             padding:  EdgeInsets.only(left: 16,right: 16,
             //take size of keyboard 
             bottom: MediaQuery.of(context).viewInsets.bottom),
              child:const   SingleChildScrollView
              (child: AddNoteForm()
              ),
            ),
          );
        },
      ),
    );
  }
}
