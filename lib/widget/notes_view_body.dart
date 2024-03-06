import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notesapp/widget/custom_appbar.dart';
import 'package:notesapp/widget/custom_list_notes.dart';
import 'package:notesapp/widget/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          CustomAppBar(),
          Expanded(child: CustomNotesList()),
          
        ],
      ),
    );
  }
}

