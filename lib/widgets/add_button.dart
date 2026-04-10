import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
           color: Colors.blue,
           borderRadius: BorderRadius.circular(10)
        ),
        width: MediaQuery.of(context).size.width,
       
        child: Center(child: Text('Add', style: TextStyle(
          fontSize: 28, color: Colors.black
        ),),),
      ),
    );
  }
}