import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/consts/consts.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/simple_bloc_observer.dart';
import 'package:notes_app/views/home_view.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';


void main() async {
  await Hive.initFlutter();
  Bloc.observer=SimpleBlocObserver();
  await Hive.openBox(kNotesBox);

  runApp( const NotesApp());
}
class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
       BlocProvider(create: (context) => AddNoteCubit(),)
      ],
      
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
       theme: ThemeData(brightness: Brightness.dark,
       fontFamily: 'Oswald',
       ),
       
        home: HomeView(),
      ),
    );
  }
}