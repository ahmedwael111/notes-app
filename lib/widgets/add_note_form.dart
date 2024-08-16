import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/coustm_text_field.dart';
import 'package:notes_app/widgets/coustom_bottom.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

final GlobalKey<FormState> formkey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

String? title, subTitle;

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CostomTextFormField(
            onSaved: (p0) {
              title = p0;
            },
            hint: 'title',
          ),
          const SizedBox(
            height: 19,
          ),
          CostomTextFormField(
            onSaved: (p1) {
              subTitle = p1;
            },
            hint: 'contant',
            maxlines: 5,
          ),
          const SizedBox(
            height: 33,
          ),
          CostomPottom(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            color: kPrimaryColor,
            text: 'Add',
          ),
          const SizedBox(
            height: 33,
          )
        ],
      ),
    );
  }
}
