import 'package:flutter/material.dart';
import 'Cards.dart';
import 'RatesFile.dart';
import 'Chips.dart';

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
                  child: const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image(
                              image: AssetImage('assets/cross.png'),
                              alignment: Alignment.topLeft,
                            ),
                            Image(
                              image: AssetImage('assets/ext.png'),
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
                            'Екатерина',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'SFProText',
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      TabBar(
                        tabs: [
                          Tab(text: 'Профиль'),
                          Tab(text: 'Настройки'),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height - kToolbarHeight,
                  child: TabBarView(
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

/*
class CombinedWidget extends StatelessWidget {
  const CombinedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      home: const DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                          image: AssetImage('assets/cross.png'),
                          alignment: Alignment.topLeft,
                        ),
                        Image(
                          image: AssetImage('assets/ext.png'),
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
                        'Екатерина',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  TabBar(
                    tabs: [
                      Tab(text: 'Профиль'),
                      Tab(text: 'Настройки'),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [Profile(), Settings()],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 */

// class TabBarDemo extends StatelessWidget {
//   const TabBarDemo({Key? key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const DefaultTabController(
//       length: 2,
//       child: Column(
//         children: [
//           TabBar(
//             tabs: [
//               Tab(text: 'Профиль'),
//               Tab(text: 'Настройки'),
//             ],
//           ),
//           TabBarView(
//               children: [
//                 Profile(),
//                 Settings()
//               ],
//             ),
//
//         ],
//       ),
//     );
//   }
// }

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
          const Text('У вас подключено', style: TextStyle(fontSize: 24, fontFamily: 'SFProText', fontWeight: FontWeight.bold)),
          const Text('Подписки, автоплатежи и сервисы, на которые вы подписались',
               style: TextStyle( color: Color(0x8C000000), fontFamily: 'SFProText', fontWeight: FontWeight.normal)),
          const Padding(padding: EdgeInsets.only(bottom: 12)),
          ScrollableCardsRow(),
          const Padding(padding: EdgeInsets.only(bottom: 12)),
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
