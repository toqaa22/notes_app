import 'package:flutter/material.dart';
import 'package:note/view/widgets/addbotoomsheet.dart';
import 'package:note/view/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton:
      FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context, builder: (context){
            return const AddBottomSheet();
          });
        },
        child: const Icon(Icons.add),),
     body: const NotesViewBody(),
    );
  }
}






