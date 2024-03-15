import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notesapp/cubits/add_note_cubit/notes_cubit.dart';
import 'package:notesapp/widget/add_note_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesModelButton extends StatelessWidget {
   const NotesModelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state)
          {
            if(state is AddNoteFailure)
            {
              print('error');
            }
            if(state is AddNoteSuccess)
            {
              Navigator.pop(context);

            }
            
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNotesLoading ? true :false,
            child: const AddNoteForm());
          },
        ),
      ),
    );
  }
}
