import 'package:flutter/material.dart';
import 'package:notes_app/widgets/costom_search_icon.dart';

class CostomAppBar extends StatelessWidget {
  const CostomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 26),
        ),
        Spacer(
          flex: 1,
        ),
        CostomSearchIcon(icon: icon,)
      ],
    );
  }
}
