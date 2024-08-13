import 'package:flutter/material.dart';
import 'package:notes_app/widgets/coustm_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CostomTextField(
            hint: 'title',
          ),
          SizedBox(
            height: 19,
          ),
          CostomTextField(
            hint: 'contant',
            maxlines: 5,
          )
        ],
      ),
    );
  }
}
