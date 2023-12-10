import 'package:flutter/material.dart';

class Rates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
    Text('Тарифы и лимиты', style: TextStyle(fontSize: 24, fontFamily: 'SFProText', fontWeight: FontWeight.bold)),
    Text('Для операций в Сбербанк Онлайн',
        style: TextStyle(color: Color(0x8C000000), fontFamily: 'SFProText', fontWeight: FontWeight.normal)
        ),
    Padding(padding: EdgeInsets.symmetric(vertical: 12)),
    RatesBuilder(
        text1: 'Изменить суточный лимит',
        text2: 'На платежи и переводы',
        imagepath: 'assets/speedometer.png'),
    Divider(),
    RatesBuilder(
        text1: 'Переводы без комиссии',
        text2: 'Показать остаток в этим месяце',
        imagepath: 'assets/Icon.png'),
    Divider(),
    RatesBuilder(
        text1: 'Информация о тарифах и лимитах',
        text2: '',
        imagepath: 'assets/arrows_forward.png')
          ],
        );
  }
}

class RatesBuilder extends StatelessWidget {
  final String text1, text2;
  final String imagepath;
  const RatesBuilder(
      {super.key, required this.text1, required this.text2, required this.imagepath});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(imagepath),
        const Padding(padding: EdgeInsets.only(left: 8)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Text(
                text1,
                textAlign: TextAlign.left,
                style: const TextStyle(fontSize: 16, fontFamily: 'SFProText', fontWeight: FontWeight.bold),
                softWrap: true,
              ),
              Text(text2,
                  textAlign: TextAlign.left,
                  style: const TextStyle(color: Color(0x8C000000), fontFamily: 'SFProText', fontWeight: FontWeight.normal),
                softWrap: true,
              )
          ],
        ),
        const Spacer(),
        InkWell(
          onTap: () {},
          child: Image.asset('assets/Right.png'),
        )
      ],
    );
  }
}
