part of 'notes_cubit.dart';



abstract class NotesState{}

class NotesInitial extends NotesState{}

class AddNotesLoading extends NotesState{}

class AddNoteSuccess extends NotesState{}

class AddNoteFailure extends NotesState
{
  final String errorMessage;
  AddNoteFailure(this.errorMessage);

}