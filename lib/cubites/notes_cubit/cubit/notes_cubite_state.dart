part of 'notes_cubite_cubit.dart';

sealed class NotesCubiteState {}

final class NotesCubiteInitial extends NotesCubiteState {}

class NotesCubiteLoading extends NotesCubiteState {}

class NotesCubitesuccess extends NotesCubiteState {
  final List<NoteModel> notes;

  NotesCubitesuccess({required this.notes});
}

class NotesCubitefaulire extends NotesCubiteState {
  final String errorMassage;

  NotesCubitefaulire(this.errorMassage);
}
