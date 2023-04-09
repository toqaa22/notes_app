import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/addnote_cubit.dart';
import 'package:note/models/note_model.dart';

import 'custom_buttom.dart';
import 'custom_textfield.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({Key? key}) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formkey,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomTextField(
            onsaved: (value) {
              title = value;
            },
            hintText: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onsaved: (value) {
              subtitle = value;
            },
            hintText: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButtom(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                var noteModel =NoteModel(title: title!, subtitle: subtitle!, date: DateTime.now().toString(), color: Colors.cyan.value);
                BlocProvider.of<AddNotesCubit>(context).addnote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
