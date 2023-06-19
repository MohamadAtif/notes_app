import 'package:flutter/material.dart';

class CustomNote extends StatelessWidget {
  const CustomNote({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(itemBuilder: (context, index) {
        return  Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container( decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(18)),
              height: 120,
              width: 150,  
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(children: [
                  Text('Title name ',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black),),
                  SizedBox(height: 10,),
                  Text(' description =data explain what you neeed,the some problem what are you in my hoollj noom full stack and loading just gopluy  ',
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.blueGrey),)
                ],)
             
              ), 
            ),
        );


        },);
  }
}