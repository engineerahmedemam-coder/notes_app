import 'package:flutter/material.dart';
import 'package:notes/views/home_view.dart';
import 'package:notes/widgets/show_modal_container.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: (){
      showModalBottomSheet(context: context, builder: (context){
       return ShowModalContainer();
      });
    },
     child: Icon(Icons.add,),backgroundColor: const Color.fromARGB(255, 121, 181, 209),);
  }
}