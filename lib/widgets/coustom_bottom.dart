import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

// ignore: must_be_immutable
class CostomPottom extends StatelessWidget {
  CostomPottom({super.key, required this.text, this.ontap,this.color = Colors.white});
  String text;
  Color color;
  VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            color:color, borderRadius: BorderRadius.circular(8)),
        height: 55,
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
        )),
      ),
    );
  }
}
