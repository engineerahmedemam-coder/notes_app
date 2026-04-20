import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes/models/notes_model.dart';

class DeleteNoteButton extends StatelessWidget {
  const DeleteNoteButton({
    super.key,
    required this.notesModel,
  });

  final NotesModel notesModel;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
    
        showDialog(context: context, builder: (dialogContext)=>
          AlertDialog(
            title: Text('Delete Note'),
            content: Text('Do you want to delete "${notesModel.title}"?'),
            actions: [
              TextButton(onPressed: () {
                Navigator.pop(dialogContext);
              }, child: Text('cancel')),
              TextButton(onPressed: 
              (){
                context.read<NotesCubit>().deleteNote(notesModel);
                Navigator.pop(dialogContext);
              }, child: Text('Delete',style: TextStyle(color: Colors.red)),)
            ],
          )
        );
              
      },
     icon: Icon(Icons.delete, color: Colors.black ,)
    );
  }
}