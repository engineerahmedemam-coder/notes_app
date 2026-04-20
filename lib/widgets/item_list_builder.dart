import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes/models/notes_model.dart';
import 'package:notes/widgets/notes_item_card.dart';

class ItemsListBuilder extends StatelessWidget {
  const ItemsListBuilder({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: BlocBuilder<NotesCubit, NotesCubitState>(
  builder: (context, state) {
    if (state is NotesCubitSuccess) {
      final notes = state.notes;
    
      return  ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return NotesItemCard(notesModel: notes[index]);
          });
        
    }

    return const Center(child: CircularProgressIndicator());
  },));
      }
  }
