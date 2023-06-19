import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';

class ModalBottomSheet extends StatelessWidget {
  const ModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child:  Column(children: [
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
        CustomButton(),
        



      ],),
    );
  }
}