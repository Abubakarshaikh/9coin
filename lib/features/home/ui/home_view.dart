import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/home/components/circle_icon.dart';
import 'package:ninecoin/features/news_page.dart';
import '../../copoun/copoun_page.dart';
import '../../luckydraw_page.dart';
import '../../notification/notifications_page.dart';
import '../../point_page.dart';
import '../components/my_bottom_navigation_bar.dart';
import 'home_page.dart';

class HomeView extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute(builder: (context) => HomeView());
  }

  HomeView({Key? key}) : super(key: key);

  final ValueNotifier<int> _valueNotifier = ValueNotifier(0);

  final List<Widget> _screens = const [
    HomePage(),
    CopounPage(),
    PointPage(),
    LuckydrawPage(),
    NewsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _valueNotifier,
      builder: (context, int newValue, widgets) {
        return Container(
          color: CoinColors.black,
          child: SafeArea(
            child: Scaffold(
              appBar: AppBar(
                leadingWidth: 120,
                leading: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Image.asset(Assets.appLogo),
                ),
                actions: [
                  CircleIcon(
                    onTap: () {
                      Navigator.push(context, NotificationPage.route());
                    },
                    icon: Badge(
                      badgeContent: const Text('2'),
                      child: const Icon(Icons.notifications,
                          color: CoinColors.orange, size: 20),
                    ),
                  ),
                  const SizedBox(width: 6.0),
                  CircleIcon(
                    onTap: () {},
                    icon: Image.asset(
                      Assets.profileIcon,
                      height: 20.5,
                      width: 20.5,
                      color: CoinColors.orange,
                    ),
                  ),
                  const SizedBox(width: 16.0),
                ],
              ),
              backgroundColor: CoinColors.black12,
              body: _screens[newValue],
              bottomNavigationBar: MyBottomNavigationBar(
                onDestinationSelected: (newIndex) {
                  _valueNotifier.value = newIndex;
                },
                currentIndex: newValue,
              ),
            ),
          ),
        );
      },
    );
  }
}

// Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Expanded(
//                     child: InkWell(
//                   onTap: () {},
//                   child: Image.asset(Assets.appLogo),
//                 )),
//                 Expanded(
//                   flex: 2,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       CircleIcon(
//                         onTap: () {
//                           Navigator.push(context, NotificationPage.route());
//                         },
//                         icon: Badge(
//                           badgeContent: const Text('3'),
//                           child: const Icon(Icons.notifications),
//                         ),
//                       ),
//                       const SizedBox(width: 12),
//                       CircleIcon(
//                           onTap: () {},
//                           icon: Image.asset(
//                             Assets.profileIcon,
//                             height: 20,
//                             width: 20,
//                             color: CoinColors.orange,
//                           )),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 16),
