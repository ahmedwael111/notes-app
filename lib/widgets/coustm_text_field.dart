import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CostomTextFormField extends StatelessWidget {
  const CostomTextFormField(
      {super.key,
      required this.hint,
      this.maxlines = 1,
      this.onSaved,
      this.onChanged});
  final String hint;
  final int maxlines;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is required';
        } else {
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxlines,
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          hintText: hint,
          border: builderBorder(),
          enabledBorder: builderBorder(),
          focusedBorder: builderBorder(kPrimaryColor)),
    );
  }

  OutlineInputBorder builderBorder([color]) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white));
}
