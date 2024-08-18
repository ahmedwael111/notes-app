import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubites/notes_cubit/cubit/notes_cubite_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_Item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubiteCubit, NotesCubiteState>(
      builder: (context, state) {
        List<NoteModel> noteList =
            BlocProvider.of<NotesCubiteCubit>(context).notesList ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: noteList.length,
              itemBuilder: (context, item) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: NoteItem(
                    noteModel: noteList[item],
                  ),
                );
              }),
        );
      },
    );
  }
}
