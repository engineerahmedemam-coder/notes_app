import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText,  this.maxLines = 1,  this.onSaved, this.controller, this.onChanged});
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(16.0),
      child:  TextFormField(
        controller: controller,
        onChanged: onChanged,
        onSaved: onSaved,
        validator: (value) {
            if (value?.isEmpty ?? true){
              return 'field is required';
            }else{
              return null;
            }
        },
        maxLines: maxLines,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          hint: Text(hintText),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(color: Colors.blue),
          errorBorder: buildBorder(color: Colors.red),
          focusedErrorBorder: buildBorder(color: Colors.red),
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