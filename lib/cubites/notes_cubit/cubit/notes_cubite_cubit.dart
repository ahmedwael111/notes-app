import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubites/cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_cubite_state.dart';

class NotesCubiteCubit extends Cubit<NotesCubiteState> {
  NotesCubiteCubit() : super(NotesCubiteInitial());

  fitchAllNotes() async {
    try {
      var noteBox = Hive.box<NoteModel>(kBoxNote);
     List<NoteModel> notesList = noteBox.values.toList();
      emit(NotesCubitesuccess(notes: notesList));
    } catch (e) {
      emit(NotesCubitefaulire(e.toString()));
    }
  }
}
