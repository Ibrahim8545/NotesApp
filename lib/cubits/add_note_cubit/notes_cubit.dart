
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notesapp/note/note_model.dart';
import 'package:notesapp/widget/constants.dart';
part 'notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(NotesInitial());




  addNote(NotesModel note)async
  {
      emit(AddNotesLoading());
    try
    {
    var notesBox= Hive.box<NotesModel>(kNotesBox);
   await notesBox.add(note);
   emit(AddNoteSuccess());
    }
    catch(e)
    {
     emit(AddNoteFailure(e.toString())); 
    }

  }
}