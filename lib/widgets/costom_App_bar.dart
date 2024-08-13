import 'package:flutter/material.dart';
import 'package:notes_app/widgets/costom_search_icon.dart';

class CostomAppBar extends StatelessWidget {
  const CostomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 26),
        ),
        Spacer(
          flex: 1,
        ),
        CostomSearchIcon()
      ],
    );
  }
}
