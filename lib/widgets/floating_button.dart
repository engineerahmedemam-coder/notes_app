import 'package:flutter/material.dart';

import 'package:notes/widgets/notes_form_sheet.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return NotesFormSheet();
          },
        );
      },
      child: Icon(Icons.add),
      backgroundColor: const Color.fromARGB(255, 121, 181, 209),
    );
  }
}


