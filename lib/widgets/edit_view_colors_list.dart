import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_item_list.dart';

class EditviewColorsList extends StatefulWidget {
  const EditviewColorsList({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  State<EditviewColorsList> createState() => _EditviewColorsListState();
}

class _EditviewColorsListState extends State<EditviewColorsList> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kcolorList.indexOf(Color(widget.noteModel.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2 * 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kcolorList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.noteModel.color = kcolorList[index].value;
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: ColorItem(
                  color: kcolorList[index],
                  isActive: currentIndex == index,
                ),
              ));
        },
      ),
    );
  }
}
