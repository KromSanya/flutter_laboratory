import 'package:flutter/material.dart';
import 'package:flutter_laboratory_2/TextMaster.dart';
import 'Fonts.dart';

class ScrollableCardsRow extends StatelessWidget {
  const ScrollableCardsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CardItem(
            imagePath: 'assets/sberprime.png',
            text: StringAssets.sberPrimeTitle,
            text1: StringAssets.feeTitle,
            text2: StringAssets.feeSumTitle,
          ),
          CardItem(
            imagePath: 'assets/percent_fill.png',
            text: StringAssets.transactionsTitle,
            text1: StringAssets.autoSubscriptionTitle,
            text2: StringAssets.feeSumTitle,
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
      height: 140,
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
                    style:  TextStyle(fontSize: FontAssets.bigFontSize16, fontFamily: FontAssets.sfProFam, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(top: 4, left: 16.0),
              child: Text(text1, style:  TextStyle(fontSize: FontAssets.bigFontSize16,fontFamily: FontAssets.sfProFam, fontWeight: FontWeight.bold),),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                  text2,
                style: TextStyle(fontSize: FontAssets.bigFontSize16, fontFamily: FontAssets.sfProFam, fontWeight: FontWeight.normal, color: Color(0x8C000000)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
