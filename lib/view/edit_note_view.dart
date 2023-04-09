import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note/models/note_model.dart';
import 'package:note/view/widgets/editnoteview_body.dart';


class Edit_note_view extends StatelessWidget {
  const Edit_note_view({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody( note: note,),

    );
  }
}
