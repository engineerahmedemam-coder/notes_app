import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_notes_cubit/cubit/notes_cubit.dart';
import 'package:notes/models/notes_model.dart';
import 'package:notes/widgets/notes_item_card.dart';

class ItemsListBuilder extends StatelessWidget {
  const ItemsListBuilder({super.key});
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesCubitState>(
      builder: (context, state) {

        List<NotesModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
         return
       Expanded(
          child: ListView.builder(
            reverse: true,
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return NotesItemCard(notesModel: notes[index],);
            },
          ),
        );
        }
    );
      }
  }
