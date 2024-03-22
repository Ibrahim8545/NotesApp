
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notesapp/cubits/notes_cubit/notes_state.dart';
import 'package:notesapp/note/note_model.dart';
import 'package:notesapp/widget/constants.dart';


class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());




  fetchAllNotes()async
  {
     
    try
    {
    var notesBox= Hive.box<NotesModel>(kNotesBox);

    List<NotesModel>notes=notesBox.values.toList();
    
  
   emit(NoteSuccess(notes));
    }
    catch(e)
    {
     emit(NoteFailure(e.toString())); 
    }

  }
}