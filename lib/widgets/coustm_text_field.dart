import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CostomTextField extends StatelessWidget {
  const CostomTextField({super.key, required this.hint, this.maxlines = 1});
  final String hint;
  final int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
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
