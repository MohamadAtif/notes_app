import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(color:Color(0xff63ffda),borderRadius: BorderRadius.circular(16)),
        width: MediaQuery.of(context).size.width,
         child: const Center(child: Text('Add Note',style: TextStyle(color: Colors.black,fontSize: 25),)),
             
    
      ),
    );
    
  }
}