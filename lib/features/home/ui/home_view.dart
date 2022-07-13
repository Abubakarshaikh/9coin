import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/coupon/ui/coupon_page.dart';
import 'package:ninecoin/features/home/components/tab_item.dart';
import 'package:ninecoin/features/home/ui/home_page.dart';
import 'package:ninecoin/features/lucky_draw/ui/luckydraw_page.dart';
import 'package:ninecoin/features/news/ui/news_page.dart';
import 'package:ninecoin/features/point/ui/point_page.dart';
import '../../../typography/text_styles.dart';
import '../../profile/ui/profile_page.dart';
import '../components/circle_icon.dart';
import '../components/my_bottom_navigation_bar.dart';
import '../components/tab_navigator.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          backgroundColor: CoinColors.transparent,
          title: Image.asset(Assets.luckyDrawPopUp),
          titlePadding: const EdgeInsets.all(0),
          contentPadding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
          content: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: CoinColors.white, width: 1.6),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.close, color: CoinColors.white, size: 24),
            ),
          ),
          alignment: Alignment.center,
        ),
      );
    });
  }

  final ValueNotifier<TabItem> _valueNotifier = ValueNotifier(TabItem.home);

  final _navigatorKeys = {
    TabItem.home: GlobalKey<NavigatorState>(),
    TabItem.coupon: GlobalKey<NavigatorState>(),
    TabItem.point: GlobalKey<NavigatorState>(),
    TabItem.luckDraw: GlobalKey<NavigatorState>(),
    TabItem.news: GlobalKey<NavigatorState>(),
  };

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<TabItem>(
      valueListenable: _valueNotifier,
      builder: (context, TabItem newValue, widgets) {
        return Container(
          color: CoinColors.fullBlack,
          child: SafeArea(
            child: Scaffold(
              body: Stack(children: [
                _buildOffstageNavigator(newValue, TabItem.home),
                _buildOffstageNavigator(newValue, TabItem.coupon),
                _buildOffstageNavigator(newValue, TabItem.point),
                _buildOffstageNavigator(newValue, TabItem.luckDraw),
                _buildOffstageNavigator(newValue, TabItem.news),
              ]),
              bottomNavigationBar: MyBottomNavigationBar(
                onSelectTab: (tabItem) {
                  if (tabItem == newValue) {
                    // pop to first route
                    _navigatorKeys[tabItem]!
                        .currentState!
                        .popUntil((route) => route.isFirst);
                  } else {
                    _valueNotifier.value = tabItem;
                  }
                },
                currentTab: newValue,
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildOffstageNavigator(TabItem currentTab, TabItem tabItem) {
    return Offstage(
      offstage: currentTab != tabItem,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabItem],
        tabItem: tabItem,
      ),
    );
  }
}
