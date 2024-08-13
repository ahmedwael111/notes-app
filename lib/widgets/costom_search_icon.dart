import 'package:flutter/material.dart';

class CostomSearchIcon extends StatelessWidget {
  const CostomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(12)),
      child: const Icon(
        Icons.search,
        size: 32,
      ),
    );
  }
}
