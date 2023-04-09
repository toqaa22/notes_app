import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/notes_cubit.dart';
import 'package:note/cubits/notes_states.dart';
import 'package:note/models/note_model.dart';

import 'custom_noteitem.dart';
class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit,NotesState>(
      builder:(context,state) {
        List<NoteModel>notes=BlocProvider.of<NotesCubit>(context).notes??[];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16,),
          child: ListView.builder(
            itemCount:notes.length ,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child:  NoteItem(
                    note: notes[index],
                  ),
                );
              }),
        );
      },

    );
  }
}
