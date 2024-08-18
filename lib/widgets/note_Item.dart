import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubites/notes_cubit/cubit/notes_cubite_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/view/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteModel});

  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return  EditNoteView(noteModel: noteModel,);
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 22, bottom: 22, left: 16),
        decoration: BoxDecoration(
            color: Color(noteModel.color),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                noteModel.title,
                style: const TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  noteModel.subTitle,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    noteModel.delete();
                    BlocProvider.of<NotesCubiteCubit>(context).fitchAllNotes();
                  },
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 22,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(noteModel.date,
                  style: TextStyle(color: Colors.black.withOpacity(0.6))),
            )
          ],
        ),
      ),
    );
  }
}
