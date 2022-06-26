import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/home/components/circle_icon.dart';
import 'package:ninecoin/features/news/ui/news_page.dart';
import 'package:ninecoin/features/profile/ui/profile_page.dart';
import '../../coupon/ui/coupon_page.dart';
import '../../lucky_draw/ui/luckydraw_page.dart';
import '../../notification/ui/notifications_page.dart';
import '../../point/ui/point_page.dart';
import '../components/my_bottom_navigation_bar.dart';
import 'home_page.dart';

class HomeView extends StatefulWidget {
  static Route route() {
    return MaterialPageRoute(builder: (context) => HomeView());
  }

  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ValueNotifier<int> _valueNotifier = ValueNotifier(0);

  final List<Widget> _screens = const [
    HomePage(),
    CouponPage(),
    PointPage(),
    LuckydrawPage(),
    NewsPage(),
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          backgroundColor: CoinColors.transparent,
          title: Image.asset(Assets.luckyDrawPopUp),
          contentPadding: const EdgeInsets.symmetric(vertical: 6.0),
          content: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: CoinColors.white, width: 1.6),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.close, color: CoinColors.white),
            ),
          ),
          alignment: Alignment.center,
        ),
      );
    });
  }

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
                    onTap: () {
                      Navigator.push(context, ProfilePage.route());
                    },
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
