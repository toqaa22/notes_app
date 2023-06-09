import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note/models/note_model.dart';

import '../constants.dart';
import 'addnote_states.dart';

class AddNotesCubit extends Cubit<ADDNotesState> {
  AddNotesCubit():super(AddNotesIntial());


  addnote(NoteModel note)async{
    emit(AddNotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      await notesBox.add(note);
      emit(AddNotesSuccess());
    } on Exception catch (e) {
      emit(AddNotesFailure('there was an error'));
    }

  }
}