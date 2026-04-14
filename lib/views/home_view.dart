import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_notes_cubit/cubit/add_notes_cubit.dart';
import 'package:notes/widgets/floating_button.dart';
import 'package:notes/widgets/item_list_builder.dart';
import 'package:notes/widgets/notes_app_bar.dart';
import 'package:notes/widgets/notes_item_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'Home View';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingButton(),
      body: Column(children: [NotesAppBar(), ItemsListBuilder()]),
    );
  }
}
