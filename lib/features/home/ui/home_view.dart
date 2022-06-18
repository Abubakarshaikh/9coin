import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/home/components/circle_icon.dart';
import 'package:ninecoin/features/news_page.dart';
import '../../coupon/ui/coupon_page.dart';
import '../../luckydraw_page.dart';
import '../../notification/notifications_page.dart';
import '../../point/ui/point_page.dart';
import '../components/my_bottom_navigation_bar.dart';
import 'home_page.dart';

class HomeView extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute(builder: (context) => HomeView());
  }

  HomeView({Key? key}) : super(key: key);

  final ValueNotifier<int> _valueNotifier = ValueNotifier(0);

  final List<Widget> _screens = const [
    PointPage(),
    HomePage(),
    CouponPage(),
    // PointPage(),
    LuckydrawPage(),
    NewsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _valueNotifier,
      builder: (context, int newValue, widgets) {
        return Container(
          color: CoinColors.fullBlack,
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
