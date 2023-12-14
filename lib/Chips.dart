import 'package:flutter/material.dart';
import 'package:flutter_laboratory_2/TextMaster.dart';

import 'Fonts.dart';

class Chips extends StatelessWidget {
  const Chips({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(StringAssets.interestTitle, style: TextStyle(fontSize: FontAssets.largeFontSize24, fontFamily: FontAssets.sfProFam, fontWeight: FontWeight.bold)),
        Text(
            StringAssets.historyCaption,
            style: TextStyle( color: Color(0x8C000000), fontFamily: FontAssets.sfProFam, fontWeight: FontWeight.normal)),
        Wrap(
          children: [
            ChipItem(text: StringAssets.food),
            ChipItem(text: StringAssets.learn),
            ChipItem(text: StringAssets.techChip),
            ChipItem(text: StringAssets.homeChip),
            ChipItem(text: StringAssets.entertainmentChip),
            ChipItem(text: StringAssets.selfCareChip),
            ChipItem(text: StringAssets.scienceChip)
          ],
        ),
      ],
    );
  }
}

class ChipItem extends StatefulWidget {
  const ChipItem({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  _ChipItemState createState() => _ChipItemState();
}

class _ChipItemState extends State<ChipItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: Chip(
            backgroundColor: isSelected ? Colors.blue : const Color(0x14000000),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: const BorderSide(color: Colors.transparent),
            ),
            label: Text(
              widget.text,
              style: TextStyle(
                fontFamily: FontAssets.sfProFam,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.white : null,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
