abstract class NotesState{}
class AddNotesIntial extends NotesState{}
class AddNotesLoading extends NotesState{}
class AddNotesSuccess extends NotesState{}
class AddNotesFailure extends NotesState{
  final String errormessege;

  AddNotesFailure(this.errormessege);
}