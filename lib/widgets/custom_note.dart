

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/editNoteView.dart';

import '../views/note_item.dart';

class CustomNote extends StatefulWidget {
 
  const CustomNote({super.key,});
  

  @override
 
  State<CustomNote> createState() => _CustomNoteState();
  
}

class _CustomNoteState extends State<CustomNote> {
@override
void initState(){
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();

}   

  @override
 
  Widget build(BuildContext context) {
    //  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    
    List<NoteModel> notes=BlocProvider.of<NotesCubit>(context).notes??[];
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return EditNoteView();
                    },
                  ));
                },
                child: NoteItem(note: notes[index],),
              ),
            );
          },
        );
      },
    );
  }
}
