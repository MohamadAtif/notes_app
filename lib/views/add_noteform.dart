import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import '../widgets/custom_button.dart';
import  'package:intl/intl.dart';


class AddNoteForm extends StatefulWidget {
   AddNoteForm({
    super.key,
  });
  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}
class _AddNoteFormState extends State<AddNoteForm> {
 
  final GlobalKey<FormState>formKey=GlobalKey();
 
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;

  String? title,subTitle;
 DateTime now = DateTime.now();
 

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Form(
        
        key: formKey ,
        autovalidateMode: autovalidateMode,
        child:  SingleChildScrollView(
          child: Column(children: [
          const  SizedBox(height: 10,),
            Padding(
              padding:const EdgeInsets.all(8.0),
              child: TextFormField(
                onSaved: (newValue) {
                  title=newValue;
                },
                validator: (value) {
                  if(value?.isEmpty??true){
                    return 'Field is required';
                  }
                  else {
                    return null;
                  }
                },
                decoration: const  InputDecoration(border: OutlineInputBorder(),fillColor:Color(0xff63ffda) 
                ,labelText: 'Enter Title',
                ),
                style: TextStyle(),
                
              ),
            ),
            Padding(
              padding:const EdgeInsets.all(8.0),
              child: TextFormField(
                onSaved: (newValue) {
                  subTitle=newValue;
                },
                validator: (value) {
                  if(value?.isEmpty??true){
                    return 'Field is required';
                  }
                  else {
                    return null;
                  } 
                },
                maxLines: 8,
                decoration:const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Description',
                  enabledBorder: OutlineInputBorder(),
                
                ),
              ),
            ),


             CustomButton(onTap: () { 
              if (formKey.currentState!.validate()){
                formKey.currentState!.save();
                BlocProvider.of<AddNoteCubit>(context).addNote(
                  NoteModel(title: title!, subTitle: subTitle!,
                  
                   date: DateFormat('yyyy-MM-dd – kk:mm').format(now),
                   color: Colors.blue.value));
    
                
              }
              else{autovalidateMode=AutovalidateMode.always;
              setState(() {});
              }
              },)
          ],),
        ),
      ),
    );
  }
}