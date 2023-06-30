import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';


class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key, required this.note,
  });
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(18)),
      height: 120,
      width: 150,
      child:  Padding(
          padding:const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style:const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                  note.subTitle,
                  style:const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),
                ),
                trailing:const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              ),
              Text(
                note.date,
                style:const TextStyle(fontSize: 13, color: Colors.black),
              )
            ],
          )),
    );
  }
}
