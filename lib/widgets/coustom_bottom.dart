import 'package:flutter/material.dart';
// import 'package:notes_app/constants.dart';

// ignore: must_be_immutable
class CostomPottom extends StatelessWidget {
  const CostomPottom(
      {super.key,
      required this.text,
      this.ontap,
      this.color = Colors.white,
      this.isLoading = false});
  final String text;
  final Color color;
  final VoidCallback? ontap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
        height: 55,
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: isLoading
                ? const CircularProgressIndicator(
                    color: Colors.black,
                  )
                : Text(
                    text,
                    style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
      ),
    );
  }
}
