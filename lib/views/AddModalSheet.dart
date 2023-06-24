import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/custom_button.dart';

import 'add_noteform.dart';

class ModalBottomSheet extends StatelessWidget {
const   ModalBottomSheet({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
         
         if (state is AddNoteSucces){
          Navigator.pop(context);
         }
         else if( state is AddNoteFailure){
         print('failled : ${state.errMessage}');
         }
        },
        builder: (context, state) {
          return ModalProgressHUD(  
            inAsyncCall: state is AddNoteLoading? true:false,
            child : AddNoteForm());
        },
      ),
    );
  }
}
