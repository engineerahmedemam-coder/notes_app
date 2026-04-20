import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes/models/notes_model.dart';
import 'package:notes/widgets/custom_text_field.dart';

import 'notes_app_bar.dart' show NotesAppBar;

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key, required this.notesModel});
  static String id = 'Edit View';
  final NotesModel notesModel;
  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  GlobalKey globalKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;
  Widget build(BuildContext context) {
    return Form(
          key: globalKey,
          autovalidateMode: autovalidateMode,
          child: SingleChildScrollView(
            child: Column(
              children: [
                NotesAppBar(
                  title: 'Edit',
                  icon: Icons.check,
                  onPressed: () {
                    widget.notesModel.title = title ?? widget.notesModel.title;
                    widget.notesModel.subtitle = subtitle ?? widget.notesModel.subtitle;
                    widget.notesModel.save();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Edit Success'))
                    );
                    Navigator.pop(context);
                  },
                ),
                CustomTextField(
                  onChanged: (value) {
                    title = value;
                  },
                  hintText: 'title',
                ),
                CustomTextField(
                  onChanged: (value) {
                    subtitle = value;
                  },
                  hintText: 'content',
                  maxLines: 8,
                ),
              ],
            ),
          ),
        );
  }
}