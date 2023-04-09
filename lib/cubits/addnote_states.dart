abstract class ADDNotesState{}
class AddNotesIntial extends ADDNotesState{}
class AddNotesLoading extends ADDNotesState{}
class AddNotesSuccess extends ADDNotesState{}
class AddNotesFailure extends ADDNotesState{
  final String errormessege;

  AddNotesFailure(this.errormessege);
}