import 'package:flutter/material.dart';

import 'package:notesapp/widget/custom_button.dart';
import 'package:notesapp/widget/cutsom_text_field.dart';

class NotesModelButton extends StatelessWidget {
  const NotesModelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const  EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32,),
            CustomTextField(
              hint: 'Title',
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
                        const SizedBox(
              height: 36,
            ),
           const  CustomButton(),
                    const SizedBox(
              height: 16,
            ),
        
        
        
          ],
        ),
      ),
    );
  }
}

