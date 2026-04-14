import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_notes_cubit/cubit/add_notes_cubit.dart';
import 'package:notes/views/home_view.dart';
import 'package:notes/widgets/show_modal_container.dart';
class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return BlocConsumer<AddNotesCubit, AddNotesState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                if (state is AddNotesSuccess){
                  Navigator.pop(context);
                }
                if (state is AddNotesFailure) {
                  print('failed ${state.errMessage}');
                }

                
                return Stack(
                  children: [ 
                    
                    ShowModalContainer(),
                    if (state is AddNotesLoading) Container(
          color: Colors.black.withOpacity(0.4),
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
                      
                    

                  ]
                  );
                
              },
            );
          },
        );
      },
      child: Icon(Icons.add),
      backgroundColor: const Color.fromARGB(255, 121, 181, 209),
    );
  }
}
