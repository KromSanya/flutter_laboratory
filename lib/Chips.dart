import 'package:flutter/material.dart';

class Chips extends StatelessWidget {
  const Chips({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.symmetric(vertical: 12)),
        Text('Интересы', style: TextStyle(fontSize: 24, fontFamily: 'SFProText', fontWeight: FontWeight.bold)),
        Text(
            'Мы подбираем истории и предложения по темам, которые вам нравятся',
            style: TextStyle( color: Color(0x8C000000), fontFamily: 'SFProText', fontWeight: FontWeight.normal)),
        Wrap(
          children: [
            ChipItem(text: 'Еда'),
            ChipItem(text: 'Саморазвитие'),
            ChipItem(text: 'Технологии'),
            ChipItem(text: 'дом'),
            ChipItem(text: 'Досуг'),
            ChipItem(text: 'Забота о себе'),
            ChipItem(text: 'Наука')
          ],
        ),
      ],
    );
  }
}

class ChipItem extends StatelessWidget {
  const ChipItem({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () {
            // Ваш обработчик нажатия здесь
          },
          child: Chip(
            backgroundColor: const Color(0x14000000),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: const BorderSide(color: Colors.transparent),
            ),
            label: Text(text, style: const TextStyle(fontFamily: 'SFProText', fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}
