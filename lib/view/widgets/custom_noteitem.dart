import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note/view/edit_note_view.dart';
class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return const Edit_note_view();
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
              title: Text('Flutter Tips',style: GoogleFonts.poppins(color: Colors.black,fontSize: 26),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 16),
                child: Text('Build Your Career With Me',style: GoogleFonts.poppins(color: Colors.black.withOpacity(0.6),fontSize: 20),),
              ),
              trailing: IconButton(onPressed: (){},icon: Icon(Icons.delete,color:Colors.black,size: 28,),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text('May 21,2022',
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