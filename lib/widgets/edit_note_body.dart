import 'package:flutter/material.dart';
import 'package:notes_app/widgets/costom_App_bar.dart';
import 'package:notes_app/widgets/coustm_text_field.dart';

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
          ),
          SizedBox(
            height: 36,
          ),
          CostomTextFormField(hint: 'Title'),
          SizedBox(
            height: 22,
          ),
          CostomTextFormField(
            hint: 'content',
            maxlines: 5,
          )
        ],
      ),
    );
  }
}
