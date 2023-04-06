import 'package:flutter/material.dart';
class CustomButtom extends StatelessWidget {
  const CustomButtom({Key? key, this.onTap}) : super(key: key);

final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff62FCD7),
          borderRadius: BorderRadius.circular(8),
        ),
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: const Center(
          child: Text('Add',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
        ),
      ),
    );
  }
}
