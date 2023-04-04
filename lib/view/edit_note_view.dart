import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note/view/widgets/editnoteview_body.dart';


class Edit_note_view extends StatelessWidget {
  const Edit_note_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(),

    );
  }
}
