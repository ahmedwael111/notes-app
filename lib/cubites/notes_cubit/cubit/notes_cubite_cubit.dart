import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_cubite_state.dart';

class NotesCubiteCubit extends Cubit<NotesCubiteState> {
  NotesCubiteCubit() : super(NotesCubiteInitial());
  List<NoteModel>? notesList;
  fitchAllNotes() async {
    var noteBox = Hive.box<NoteModel>(kBoxNote);
    notesList = noteBox.values.toList();
    emit(NotesCubiteSuccess());
  }
}
