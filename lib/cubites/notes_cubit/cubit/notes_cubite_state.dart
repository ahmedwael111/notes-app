part of 'notes_cubite_cubit.dart';

sealed class NotesCubiteState {}

final class NotesCubiteInitial extends NotesCubiteState {
  final String initialText = "add note";
}

class NotesCubiteSuccess extends NotesCubiteState {}
