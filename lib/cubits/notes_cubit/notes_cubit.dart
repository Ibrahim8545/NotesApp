import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/note/note_model.dart';
import 'package:notesapp/widget/constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List <NotesModel>?notes;

  fetchAllNotes()
  {
     
    var notesBox= Hive.box<NotesModel>(kNotesBox);

    notes=notesBox.values.toList();
    
  
   emit(NotesSuccess());
    }

  
}

