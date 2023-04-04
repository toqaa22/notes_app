import 'package:flutter/material.dart';
import 'package:note/view/widgets/custom_textfield.dart';

import 'custom_buttom.dart';
class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: const[
            SizedBox(height: 40,),
            CustomTextField(
              hintText: 'Title',
            ),
            SizedBox(height: 16,),
            CustomTextField(
              hintText: 'Content',
              maxLines: 5,
            ),
            SizedBox(height: 30,),
            CustomButtom(),
            SizedBox(height: 16,),
            

          ],
        ),
      ),
    );
  }
}
