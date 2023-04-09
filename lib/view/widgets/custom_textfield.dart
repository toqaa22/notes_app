import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key,required this.hintText, this.maxLines=1, this.onsaved, this.onChanged}) : super(key: key);
  final void Function(String)? onChanged;
  final String hintText;
  final int maxLines;
  final void Function(String?)? onsaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'field is required';
        }else{
          return null;
        }
      },
      onChanged: onChanged,
      onSaved: onsaved,
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
