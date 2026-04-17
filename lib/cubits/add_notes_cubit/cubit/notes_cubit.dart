import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes/constants/constants.dart';
import 'package:notes/models/notes_model.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());

  fetchAllNotes() async{

    try {
  var notesBox = Hive.box<NotesModel>(kNotesBox);

    emit(NotesCubitSuccess(notesBox.values.toList() ));
} catch (e) {
  emit(NotesCubitFailure(errMessage: e.toString()));
}
  }
}
