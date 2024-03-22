import 'package:notesapp/note/note_model.dart';







abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NoteSuccess extends NotesState {
  final List<NotesModel> notes;
  NoteSuccess(this.notes);
}

class NoteFailure extends NotesState {
  final String errorMessage;
  NoteFailure(this.errorMessage);
}
