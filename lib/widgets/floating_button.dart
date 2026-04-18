import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_notes_cubit/cubit/notes_cubit.dart';

import 'package:notes/widgets/notes_form_sheet.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
     final notesCubit = BlocProvider.of<NotesCubit>(context);
        showModalBottomSheet(
          isScrollControlled: true,
          context: context, 
          builder: (context) {
            return BlocProvider.value(
              value: notesCubit,
    
              child: NotesFormSheet(),
            );
          },
        );
      },
      child: Icon(Icons.add),
      backgroundColor: const Color.fromARGB(255, 121, 181, 209),
    );
  }
}
