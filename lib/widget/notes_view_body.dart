import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/note/note_model.dart';

import 'package:notesapp/widget/custom_appbar.dart';
import 'package:notesapp/widget/custom_list_notes.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});


  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState()
  {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  
    
  }
  
  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(
            child: CustomNotesList()
            ),
          
        ],
      ),
    );
  }
}

