import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(   
        appBar: AppBar(title:const Text('Notes'),
        ),

        body: const CustomNote(),
    );
  }
}