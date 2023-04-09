import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note/models/note_model.dart';
import 'package:note/view/edit_note_view.dart';

import '../../cubits/notes_cubit.dart';
class NoteItem extends StatelessWidget {
  const NoteItem({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return  Edit_note_view(
            note: note,
          );
        }),
        );
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 24, 0, 24),
        decoration: BoxDecoration(
          color: Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(note.title,style: GoogleFonts.poppins(color: Colors.black,fontSize: 26),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 16),
                child: Text(note.subtitle,style: GoogleFonts.poppins(color: Colors.black.withOpacity(0.6),fontSize: 20),),
              ),
              trailing: IconButton(onPressed: (){
                note.delete();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              },icon: Icon(Icons.delete,color:Colors.black,size: 28,),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(note.date,
                style :GoogleFonts.poppins(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 16),
              ),
            ),
          ],
        ) ,
      ),
    );
  }
}