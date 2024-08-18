import 'package:flutter/material.dart';

class CostomSearchIcon extends StatelessWidget {
  const CostomSearchIcon({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        width: 50,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(.05),
            borderRadius: BorderRadius.circular(12)),
        child: IconButton(
            splashRadius: 155,
            splashColor: Colors.white,
            onPressed: onPressed,
            icon: Icon(icon)));
  }
}
