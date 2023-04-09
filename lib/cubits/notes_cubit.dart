import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';

import '../constants.dart';
import '../models/note_model.dart';
import 'notes_states.dart';

class NotesCubit extends Cubit<NotesState>{
  NotesCubit():super(NotesIntial());
  List<NoteModel>? notes;
  fetchAllNotes(){

      var notesBox = Hive.box<NoteModel>(kNotesBox);
     notes=notesBox.values.toList();
     emit(NotesSuccess());



  }
}