import 'package:flutter/material.dart';
import 'package:note/view/widgets/add_note_form.dart';
import 'package:note/view/widgets/custom_textfield.dart';

import 'custom_buttom.dart';
class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}
