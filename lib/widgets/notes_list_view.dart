import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_Item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          // itemCount: 10,
          itemBuilder: (context, item) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: NoteItem(),
            );
          }),
    );
  }
}
