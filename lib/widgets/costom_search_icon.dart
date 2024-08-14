import 'package:flutter/material.dart';

class CostomSearchIcon extends StatelessWidget {
  const CostomSearchIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return InkResponse(
      splashColor: Colors.white.withOpacity(0.2),
      highlightShape: BoxShape.circle,
      radius: 14,
      onTap: () {},
      child: Container(
        height: 45,
        width: 50,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(.05),
            borderRadius: BorderRadius.circular(12)),
        child: Icon(
          icon,
        ),
      ),
    );
  }
}
