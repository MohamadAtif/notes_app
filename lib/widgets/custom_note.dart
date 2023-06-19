import 'package:flutter/material.dart';

class CustomNote extends StatelessWidget {
  const CustomNote({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(itemBuilder: (context, index) {
        return  Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container( decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.circular(18)),
              height: 120,
              width: 150,  
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                 ListTile(
                  title: Text('Flutter Title note',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black, ),),
                  subtitle: Text('description =data explain what you neeed ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.blueGrey),),
                  trailing: Icon(Icons.delete,color: Colors.red,),
                 )
                ,
                Text('20/6/2023',style: TextStyle(fontSize: 13,color: Colors.black),)
                ],)
             
              ), 
            ),
        );


        },);
  }
}