import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/coupon/ui/coupon_page.dart';
import 'package:ninecoin/features/home/components/tab_item.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar(
      {Key? key, required this.onSelectTab, required this.currentTab})
      : super(key: key);
  final ValueChanged<TabItem> onSelectTab;
  final TabItem currentTab;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (index) => onSelectTab(
        TabItem.values[index],
      ),
      selectedIndex: currentTab.index,
      destinations: [
        InkWell(
          onTap: () {},
          child: Container(
            color: currentTab.index == 0
                ? CoinColors.blackMedium1
                : CoinColors.blackMedium2,
            child: NavigationDestination(
              icon: Image.asset(Assets.home, height: 22, width: 22),
              selectedIcon:
                  Image.asset(Assets.homeColor, height: 22, width: 22),
              label: 'Home',
            ),
          ),
        ),
        Container(
          color: currentTab.index == 1
              ? CoinColors.blackMedium1
              : CoinColors.blackMedium2,
          child: NavigationDestination(
            icon: Image.asset(Assets.coupon, height: 24, width: 24),
            selectedIcon:
                Image.asset(Assets.couponColor, height: 24, width: 24),
            label: 'Coupon',
          ),
        ),
        Container(
          color: currentTab.index == 2
              ? CoinColors.blackMedium1
              : CoinColors.blackMedium2,
          child: NavigationDestination(
            icon: Image.asset(Assets.point, height: 24, width: 24),
            selectedIcon: Image.asset(Assets.pointColor, height: 24, width: 24),
            label: 'Point',
          ),
        ),
        Container(
          color: currentTab.index == 3
              ? CoinColors.blackMedium1
              : CoinColors.blackMedium2,
          child: NavigationDestination(
            icon: Image.asset(Assets.luckydraw, height: 24, width: 24),
            selectedIcon:
                Image.asset(Assets.luckydrawColor, height: 24, width: 24),
            label: 'Luck draw',
          ),
        ),
        Container(
          color: currentTab.index == 4
              ? CoinColors.blackMedium1
              : CoinColors.blackMedium2,
          child: NavigationDestination(
            icon: Image.asset(Assets.news, height: 24, width: 24),
            selectedIcon: Image.asset(Assets.newscolor, height: 24, width: 24),
            label: 'News',
          ),
        ),
      ],
    );
  }
}
