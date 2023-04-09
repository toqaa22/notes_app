import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/notes_cubit.dart';
import 'package:note/view/widgets/custom_appbar.dart';
import 'package:note/view/widgets/custom_textfield.dart';

import '../../models/note_model.dart';
class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
   String? title,content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(26.0),
      child: Column(children: [
        CustomAppbar(
          onPressed: (){
            if(title != null){
              widget.note.title=title!;
            }
            if(content != null){
              widget.note.subtitle=content!;
            }
            widget.note.save();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);

          },
            icon: Icons.edit, title: 'Edit Note'),
        SizedBox(height: 24,),
        CustomTextField(
          onChanged: (value){
            title=value;
          },
            hintText: 'Title'),
        SizedBox(
          height: 30,
        ),
        CustomTextField(
            onChanged: (value){
              content=value;
            },
            hintText: 'Content',maxLines: 5),
      ],),
    );
  }
}