import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key,required this.hintText, this.maxLines=1}) : super(key: key);
  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: Color(0xff62FCD7),
      decoration: InputDecoration(
        hintText: hintText ,
      hintStyle: TextStyle(color: Color(0xff62FCD7)),
      border: buildBorder(),
      enabledBorder: buildBorder(),
      focusedBorder: buildBorder(),

    ),

    );
  }
  OutlineInputBorder buildBorder([color]){
    return OutlineInputBorder(
      borderSide: BorderSide(
        color:  Colors.white,
      ),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
