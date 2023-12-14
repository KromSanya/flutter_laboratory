import 'package:flutter/material.dart';
import 'package:flutter_laboratory_2/TextMaster.dart';
import 'Fonts.dart';
class Rates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
    Text(StringAssets.limitsAndSubscriptionsTitle, style: TextStyle(fontSize: FontAssets.largeFontSize24 , fontFamily: FontAssets.sfProFam, fontWeight: FontWeight.bold)),
    Text(StringAssets.onlySberTitle,
        style: TextStyle(color: Color(0x8C000000), fontFamily: FontAssets.sfProFam, fontWeight: FontWeight.normal)
        ),
    Padding(padding: EdgeInsets.symmetric(vertical: 8)),
    RatesBuilder(
        text1: StringAssets.changeLimitTitle,
        text2: StringAssets.transactionsAndFeeTitle,
        imagepath: 'assets/speedometer.png'),
    Divider(),
    RatesBuilder(
        text1: StringAssets.transactionsWithoutExtraTitle,
        text2: StringAssets.showBalanceTitle,
        imagepath: 'assets/Icon.png'),
    Divider(),
    RatesBuilder(
        text1: StringAssets.limitInformationTitle,
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
        Image.asset(imagepath, alignment: Alignment.topLeft,),
        const Padding(padding: EdgeInsets.only(left: 8)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 263,
              child:
              Text(
                text1,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 16, fontFamily: FontAssets.sfProFam, fontWeight: FontWeight.bold),
                softWrap: true,
              )
            ),
              Text(text2,
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Color(0x8C000000), fontFamily: FontAssets.sfProFam, fontWeight: FontWeight.normal),
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
