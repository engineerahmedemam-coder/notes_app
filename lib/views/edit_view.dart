import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_notes_cubit/cubit/add_notes_cubit.dart';
import 'package:notes/cubits/add_notes_cubit/cubit/notes_cubit.dart';
import 'package:notes/main.dart';
import 'package:notes/models/notes_model.dart';
import 'package:notes/widgets/add_button.dart';
import 'package:notes/widgets/custom_text_field.dart';
import 'package:notes/widgets/notes_app_bar.dart';

class EditView extends StatefulWidget {
  const EditView({super.key});
  static String id = 'Edit View';

  @override
  State<EditView> createState() => _EditViewState();
}

class _EditViewState extends State<EditView> {
  GlobalKey globalKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        body: Form(
          key: globalKey,
          autovalidateMode: autovalidateMode,
          child: SingleChildScrollView(
            child: Column(
              children: [
                NotesAppBar(
                  title: 'Edit',
                  icon: Icons.check,
                  onPressed: () {},
                ),
                CustomTextField(
                  hintText: 'title',
                  onSaved: (value) {
                    title = value;
                  },
                ),
                CustomTextField(
                  hintText: 'content',
                  maxLines: 8,
                  onSaved: (value) {
                    subtitle = value;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
