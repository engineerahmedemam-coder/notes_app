part of 'notes_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

final class NotesCubitSuccess extends NotesCubitState {
    final List<NotesModel> notes;
  NotesCubitSuccess(this.notes);
}



