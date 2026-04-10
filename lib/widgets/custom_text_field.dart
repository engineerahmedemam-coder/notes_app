import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText,  this.maxLines = 1});
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(16.0),
      child:  TextField(
        maxLines: maxLines,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          hint: Text(hintText),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(color: Colors.blue)
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder({Color? color}) {
    return OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(
            color: color ??  Colors.white,
          
          )
        );
  }
}