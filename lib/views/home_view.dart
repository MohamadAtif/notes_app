import 'package:flutter/material.dart';
import 'package:notes_app/views/AddModalSheet.dart';
import 'package:notes_app/widgets/custom_note.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(   
        appBar: AppBar(title:const Text('Notes',),
        ),

        body: const CustomNote(),
        floatingActionButton: FloatingActionButton(onPressed: (){
          CustomModalSheet(context);
        },child:const Icon(Icons.add),),
        
    );
  }














  void CustomModalSheet(BuildContext context) {
      showModalBottomSheet(
        isScrollControlled: true,
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      context:context , builder: (context) {
      return ModalBottomSheet();
    },);
  }
}