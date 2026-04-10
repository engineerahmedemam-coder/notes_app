import 'package:flutter/material.dart';
import 'package:notes/widgets/add_button.dart';
import 'package:notes/widgets/custom_text_field.dart';

class ShowModalContainer extends StatelessWidget {
  const ShowModalContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
       return Container(
     child: Column(
      children: [
        CustomTextField(hintText: 'tiltle',),
        CustomTextField(hintText: 'content', maxLines: 8,),
        AddButton()
      ],
     ),
    );
      
  }
}


