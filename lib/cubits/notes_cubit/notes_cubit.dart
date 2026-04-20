import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes/constants/constants.dart';
import 'package:notes/models/notes_model.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());
  List<NotesModel>? notes;
  void fetchAllNotes() {
  var notesBox = Hive.box<NotesModel>(kNotesBox);
  final notes = notesBox.values.toList().reversed.toList();
   if (!isClosed) {
    emit(NotesCubitSuccess(notes));
  }
  }

    Future<void> deleteNote(NotesModel note) async {
  await note.delete();
  fetchAllNotes();
}
Future<void> updateNote(NotesModel note, {
  required String title,
  required String subtitle,
}) async {
  note.title = title;
  note.subtitle = subtitle;

  await note.save(); // Hive built-in update

  fetchAllNotes();
}
}
