import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/note/note_model.dart';
import 'package:notesapp/widget/custom_appbar.dart';
import 'package:notesapp/widget/cutsom_text_field.dart';


class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.notes});
final NotesModel notes;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {

String? title,subTitle; 

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const  EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
           const SizedBox(height: 80,),
          CustomAppBar(
            onPressed:()
            {
              widget.notes.title=title?? widget.notes.title;
              widget.notes.subTitle=subTitle?? widget.notes.subTitle;
              widget.notes.save();
               BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
              
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField
          (
            onChanged: (value)
            {
              title=value;
            },
            hint: 'Title'
            ), 

          const  SizedBox(height: 16,),


          CustomTextField(
            onChanged: (value)
            {
              subTitle=value;
            },
            hint: 'Content',maxLines: 5,
            )

          
        ],
      ),
    );
  }
}