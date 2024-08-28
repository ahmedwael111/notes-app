import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubites/notes_cubit/cubit/notes_cubite_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_Item.dart';
import 'package:notes_app/widgets/show_snakeBar.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({
    super.key,
  });

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  //  NoteModel noteModel;
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
                return Slidable(
                  key: ValueKey(item),
                  endActionPane:
                      ActionPane(motion: const StretchMotion(), children: [
                    SlidableAction(
                      onPressed: (context) {
                        setState(() {
                          // noteList.removeAt(item);
                          noteList[item].delete();
                          BlocProvider.of<NotesCubiteCubit>(context)
                              .fitchAllNotes();

                          showSnakBar(context, 'Delete Note Successed',
                              color: Colors.red);
                        });
                      },
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      icon: FontAwesomeIcons.trash,
                      label: 'Delete',
                      spacing: 12,
                      borderRadius: BorderRadius.circular(30),
                    )
                  ]),
                  // direction: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: NoteItem(
                      noteModel: noteList[item],
                    ),
                  ),
                );
              }),
        );
      },
    );
  }
}
