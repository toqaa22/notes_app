import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_searchicon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key, required this.icon, required this.title}) : super(key: key);
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        SizedBox(
          height: 70,
        ),
      Text(title,style: GoogleFonts.poppins(fontSize: 28),),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}

