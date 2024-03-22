import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:notesapp/cubits/add_note_cubit/notes_cubit.dart';
import 'package:notesapp/note/note_model.dart';
import 'package:notesapp/widget/custom_button.dart';
import 'package:notesapp/widget/cutsom_text_field.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  //to catch error when enter to validate any wrong input
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 36,
          ),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNotesLoading ?true:false,
                onTap: () {
                
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
var currentDate = DateTime.now();

                    var formattedCurrentDate =
                        DateFormat('dd-mm-yyyy').format(currentDate);
                  BlocProvider.of<AddNotesCubit>(context).addNote(NotesModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: formattedCurrentDate,
                      color: Colors.blue.value));
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              });
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
