part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFuilure extends AddNoteState {
  final String errorMassage;

  AddNoteFuilure(this.errorMassage);
}
