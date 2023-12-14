import 'package:flutter/material.dart';
import 'package:flutter_laboratory_2/Fonts.dart';
import 'Cards.dart';
import 'RatesFile.dart';
import 'Chips.dart';
import 'TextMaster.dart';
void main() {
  //runApp(MyApp());
  runApp(const CombinedWidget());
}

class CombinedWidget extends StatelessWidget {
  const CombinedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top + 14.0,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                              },
                              icon: const ImageIcon(
                                AssetImage('assets/cross.png'),
                                color: Colors.green,
                              ),
                              alignment: Alignment.topLeft,
                            ),

                            IconButton(
                              onPressed: () {
                              },
                              icon: const ImageIcon(
                                AssetImage('assets/ext.png'),
                                color: Colors.green,
                              ),
                              alignment: Alignment.topRight,
                            ),
                          ],
                        ),
                      ),
                       Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/Photo.png'),
                            alignment: Alignment.topCenter,
                          ),
                          Text(
                            StringAssets.userName,
                            style: TextStyle(
                              fontSize: FontAssets.largeFontSize24,
                              fontFamily: FontAssets.sfProFam,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      TabBar(
                          indicatorColor: Colors.green,
                        tabs: [
                          Tab(text: StringAssets.profile),
                          Tab(text: StringAssets.settings),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height - kToolbarHeight,
                  child: const TabBarView(
                    children: [Profile(), Settings()],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(padding: EdgeInsets.only(top: 14)),
           Text(StringAssets.subscriptionTitle, style: TextStyle(fontSize: 24, fontFamily: FontAssets.sfProFam, fontWeight: FontWeight.bold)),
           Text(StringAssets.subscriptionsTitle,
               style: TextStyle( color: Color(0x8C000000), fontFamily: FontAssets.sfProFam, fontWeight: FontWeight.normal)),
          const Padding(padding: EdgeInsets.only(bottom: 8)),
          ScrollableCardsRow(),
          const Padding(padding: EdgeInsets.only(bottom: 8)),
          Rates(),
          const Chips()
        ],
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
