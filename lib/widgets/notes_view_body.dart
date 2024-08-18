import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubites/notes_cubit/cubit/notes_cubite_cubit.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/widgets/costom_App_bar.dart';
// import 'package:notes_app/widgets/note_Item.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubiteCubit>(context).fitchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 36,
          ),
          CostomAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: NotesListView(),
          )
        ],
      ),
    );
  }
}
