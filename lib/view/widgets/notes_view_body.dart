import 'package:flutter/material.dart';
import 'custom_appbar.dart';
import 'custom_noteitem.dart';
import 'notes_listview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

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

