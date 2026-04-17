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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.withValues(alpha: 0.4)
            ),
            padding: EdgeInsets.all(8),
            
            child: IconButton(onPressed: onPressed, icon: Icon(icon))
            )
        
        ],
      ),
    );
  }
}


