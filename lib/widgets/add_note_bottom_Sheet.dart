import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/coustm_text_field.dart';
import 'package:notes_app/widgets/coustom_bottom.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const CostomTextField(
              hint: 'title',
            ),
            const SizedBox(
              height: 19,
            ),
            const CostomTextField(
              hint: 'contant',
              maxlines: 5,
            ),
            const SizedBox(
              height: 33,
            ),
            CostomPottom(
              color: kPrimaryColor,
              text: 'Add',
            ),
            const SizedBox(
              height: 33,
            )
          ],
        ),
      ),
    );
  }
}
