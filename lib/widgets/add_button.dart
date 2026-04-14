import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_notes_cubit/cubit/add_notes_cubit.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          width: MediaQuery.of(context).size.width,
    
          child: Center(
            child: Text(
              'Add',
              style: TextStyle(fontSize: 28, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
