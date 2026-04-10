import 'package:flutter/material.dart';
import 'package:notes/widgets/item_list_builder.dart';
import 'package:notes/widgets/notes_app_bar.dart';
import 'package:notes/widgets/notes_item_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'Home View';
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add,),backgroundColor: const Color.fromARGB(255, 121, 181, 209),),
      body: Column(
        children: [
          NotesAppBar(),
          ItemsListBuilder()
        ],
      )
    );
  }
}


