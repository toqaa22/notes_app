import 'package:flutter/material.dart';
class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({Key? key, required this.icon,this.onPressed}) : super(key: key);
  final void Function()? onPressed;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      width: 47,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.06),
        borderRadius: BorderRadius.circular(16),
      ),
      child:  Center(
        child: IconButton
          (onPressed: onPressed,
            icon: Icon(icon,size: 28,),
        ),
      ),
    );
  }
}
