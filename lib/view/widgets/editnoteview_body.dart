import 'package:flutter/material.dart';
import 'package:note/view/widgets/custom_appbar.dart';
class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(26.0),
      child: Column(children: [
        CustomAppbar(icon: Icons.edit, title: 'Edit Note'),
      ],),
    );
  }
}