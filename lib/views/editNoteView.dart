import 'package:flutter/material.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Note'),),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
        child: const  Column(children: [
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration:   InputDecoration(border: OutlineInputBorder(),fillColor:Color(0xff63ffda) 
              ,labelText: 'Enter Title',
              ),
              style: TextStyle(),
              
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              maxLines: 8,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Description',
                enabledBorder: OutlineInputBorder(),
              
              
              ),
            ),
          ),
        ],),
        ),
      )   
    );
  }
}