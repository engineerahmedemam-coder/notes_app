import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes/constants/constants.dart';
import 'package:notes/models/notes_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  addNote(NotesModel note) async{

    emit(AddNotesLoading());
    try {
  var notesBox = Hive.box<NotesModel>(kNotesBox);
  await notesBox.add(note);
  emit(AddNotesSuccess());
}  catch (e) {
  emit(AddNotesFailure(errMessage: e.toString()));

}

  }
}
