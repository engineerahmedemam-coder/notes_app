import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_notes_cubit/cubit/add_notes_cubit.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key, this.onTap, this.isLoading = false});
  final void Function()? onTap;
  final bool isLoading ;
  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all( 16 ),
        child: Padding(
          padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            width: MediaQuery.of(context).size.width,
              
            child: Center(
              child: isLoading ? SizedBox(
                child: CircularProgressIndicator(),
              ) : Text(
                'Add',
                style: TextStyle(fontSize: 28, color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
