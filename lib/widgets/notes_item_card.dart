import 'package:flutter/material.dart';
import 'package:notes/views/edit_view.dart';

class NotesItemCard extends StatelessWidget {
  const NotesItemCard({super.key});
   
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
            color: const Color.fromARGB(222, 239, 183, 28),
            borderRadius: BorderRadius.circular(screenWidth*0.04)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text('data', style: TextStyle(color: Colors.black),),
                subtitle: Text('data', style: TextStyle(color: Colors.black),),
                trailing: IconButton(
                  onPressed: () {},
                 icon: Icon(Icons.delete, color: Colors.black ,)
                ),
              ),
              SizedBox(height: screenHieght*0.1,),
              Text('date', style: TextStyle(color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}