import 'package:flutter/material.dart';

class NotesAppBar extends StatelessWidget {
  const NotesAppBar({super.key, required this.title, required this.icon, required this.onPressed});
  final String title;
  final IconData icon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 32, bottom: 0),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Text(title, style: TextStyle(
            fontSize: 30
          ),),
          IconButton(onPressed: onPressed, icon: Icon(icon), iconSize: 30,)
        
        ],
      ),
    );
  }
}


