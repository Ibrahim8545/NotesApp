import 'package:flutter/material.dart';

import 'package:notesapp/widget/custom_appbar.dart';
import 'package:notesapp/widget/custom_list_notes.dart';

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

