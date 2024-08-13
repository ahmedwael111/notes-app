import 'package:flutter/material.dart';
import 'package:notes_app/widgets/costom_App_bar.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          size: 28,
          color: Colors.black,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
