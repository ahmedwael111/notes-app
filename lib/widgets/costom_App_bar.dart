import 'package:flutter/material.dart';
import 'package:notes_app/widgets/costom_search_icon.dart';

class CostomAppBar extends StatelessWidget {
  const CostomAppBar(
      {super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 26),
        ),
        const Spacer(
          flex: 1,
        ),
        CostomSearchIcon(
          onPressed: onPressed,
          icon: icon,
        )
      ],
    );
  }
}
