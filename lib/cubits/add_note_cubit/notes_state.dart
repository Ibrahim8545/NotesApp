part of 'notes_cubit.dart';



abstract class AddNotesState{}

class NotesInitial extends AddNotesState{}

class AddNotesLoading extends AddNotesState{}

class AddNoteSuccess extends AddNotesState{}

class AddNoteFailure extends AddNotesState
{
  final String errorMessage;
  AddNoteFailure(this.errorMessage);

}