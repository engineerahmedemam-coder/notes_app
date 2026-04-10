import 'package:flutter/material.dart';
import 'package:notes/widgets/notes_item_card.dart';

class ItemsListBuilder extends StatelessWidget {
  const ItemsListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          
         return NotesItemCard();
        }
        
        ),
    );
  }
}
