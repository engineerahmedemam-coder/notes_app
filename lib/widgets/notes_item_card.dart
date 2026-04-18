import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:notes/models/notes_model.dart';
import 'package:notes/views/edit_view.dart';

class NotesItemCard extends StatelessWidget {
  const NotesItemCard({super.key, required this.notesModel});
   final NotesModel notesModel;
  @override
  Widget build(BuildContext context) {
   double  screenHieght = MediaQuery.of(context).size.height;
   double  screenWidth = MediaQuery.of(context).size.width;
    return  GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditView.id);
      },
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          
          height: screenHieght * 0.25,
          decoration: BoxDecoration(
            color:  Color(notesModel.color),
            borderRadius: BorderRadius.circular(screenWidth*0.04)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(notesModel.title, style: TextStyle(color: Colors.black),),
                subtitle: Text(notesModel.subtitle, style: TextStyle(color: Colors.black),),
                trailing: IconButton(
                  onPressed: () {},
                 icon: Icon(Icons.delete, color: Colors.black ,)
                ),
              ),
              SizedBox(height: screenHieght*0.1,),
              Text(notesModel.date, style: TextStyle(color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}