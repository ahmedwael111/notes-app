import 'package:flutter/material.dart';
import 'package:notes_app/widgets/costom_App_bar.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

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
            title: 'Edit note',
            icon: Icons.check,
          )
        ],
      ),
    );
  }
}
