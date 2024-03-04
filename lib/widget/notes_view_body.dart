import 'package:flutter/material.dart';
import 'package:notesapp/widget/custom_appbar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24),
      child: const Column(
        children: [
          SizedBox(height: 60,),
          CustomAppBar()
        ],
      ),
    );
  }
}

