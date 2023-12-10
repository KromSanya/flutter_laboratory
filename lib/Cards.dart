import 'package:flutter/material.dart';
import 'main.dart';

class ScrollableCardsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CardItem(
            imagePath: 'assets/sberprime.png',
            text: 'СберПрайм',
            text1: 'Платёж 9 июля',
            text2: '199 ₽ в месяц',
          ),
          CardItem(
            imagePath: 'assets/percent_fill.png',
            text: 'Переводы',
            text1: 'Автопродление 21 августа',
            text2: '199 ₽ в месяц',
          ),
        ],
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String imagePath;
  final String text, text1, text2;

  const CardItem({super.key,
    required this.imagePath,
    required this.text,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8.0),
      width: 216.0,
      height: 130,
      child: Card(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 16.0, left: 16.0),
                    child: Image.asset(
                      imagePath,
                      alignment: Alignment.topLeft,
                    )),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    text,
                    style: const TextStyle(fontSize: 16.0, fontFamily: 'SFProText', fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(top: 8, left: 16.0),
              child: Text(text1, style: const TextStyle(fontFamily: 'SFProText', fontWeight: FontWeight.bold),),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                  text2,
                style: const TextStyle(fontSize: 16.0, fontFamily: 'SFProText', fontWeight: FontWeight.normal, color: Color(0x8C000000)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
