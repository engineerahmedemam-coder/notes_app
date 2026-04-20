import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_notes_cubit/cubit/add_notes_cubit.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes/main.dart';
import 'package:notes/models/notes_model.dart';
import 'package:notes/widgets/add_button.dart';
import 'package:notes/widgets/custom_text_field.dart';
import 'package:notes/widgets/edit_view_body.dart';
import 'package:notes/widgets/notes_app_bar.dart';

class EditView extends StatelessWidget {
  const EditView({super.key, required this.notesModel,});
  static String id = 'Edit View';
  final NotesModel notesModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditViewBody(notesModel: notesModel)
    );
  }
}
