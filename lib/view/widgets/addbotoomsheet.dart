import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/addnote_cubit.dart';
import 'package:note/cubits/addnote_states.dart';
import 'package:note/view/widgets/add_note_form.dart';
import 'package:note/view/widgets/custom_textfield.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'custom_buttom.dart';
class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNotesCubit,NotesState>(
          listener : (context,state){
            if(state is AddNotesFailure){
              print('failed ${state.errormessege}');
            }
            if(state is AddNotesSuccess){
              Navigator.pop(context);
            }

          },
            builder : (context,state){
            return ModalProgressHUD(
                inAsyncCall: state is AddNotesLoading ? true :false,
                child: const AddNoteForm());
      }

      ),
    ),
    );

  }
}
