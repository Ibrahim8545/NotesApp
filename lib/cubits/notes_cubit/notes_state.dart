part of 'notes_cubit.dart';



import 'package:notesapp/note/note_model.dart';

abstract class AddNotesState{}

class NotesInitial extends AddNotesState{}

class NotesLoading extends AddNotesState{}

class NoteSuccess extends AddNotesState
{
  List<NotesModel>notes;
  NoteSuccess(this.notes);
}

class NoteFailure extends AddNotesState
{
  final String errorMessage;
  NoteFailure(this.errorMessage);

}