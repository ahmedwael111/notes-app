import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubites/notes_cubit/cubit/notes_cubite_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_item_list.dart';
import 'package:notes_app/widgets/costom_App_bar.dart';
import 'package:notes_app/widgets/coustm_text_field.dart';
import 'package:notes_app/widgets/edit_view_colors_list.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 36,
          ),
          CostomAppBar(
            onPressed: () {
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.subTitle = content ?? widget.noteModel.subTitle;
              widget.noteModel.save();
              BlocProvider.of<NotesCubiteCubit>(context).fitchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 36,
          ),
          CostomTextFormField(
              onChanged: (p0) {
                title = p0;
              },
              hint: widget.noteModel.title),
          const SizedBox(
            height: 22,
          ),
          CostomTextFormField(
            onChanged: (p0) {
              content = p0;
            },
            hint: widget.noteModel.subTitle,
            maxlines: 5,
          ),
          const SizedBox(
            height: 22,
          ),
          EditviewColorsList(
            noteModel: widget.noteModel,
          )
        ],
      ),
    );
  }
}

