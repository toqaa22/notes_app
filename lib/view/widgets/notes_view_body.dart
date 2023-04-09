

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/notes_cubit.dart';
import 'custom_appbar.dart';
import 'custom_noteitem.dart';
import 'notes_listview.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  void initState(){
    BlocProvider.of<NotesCubit>(context as BuildContext).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
      Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          CustomAppbar(icon: Icons.search,title: 'Notes'),
          Expanded(
              child: NotesListView(),
          ),
        ],
      ),
    );
  }
}

