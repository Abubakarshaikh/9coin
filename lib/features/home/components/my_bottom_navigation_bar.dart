import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar(
      {Key? key,
      required this.onDestinationSelected,
      required this.currentIndex})
      : super(key: key);
  final Function(int) onDestinationSelected;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: onDestinationSelected,
      selectedIndex: currentIndex,
      destinations: [
        Container(
          color: currentIndex == 0
              ? CoinColors.blackMedium1
              : CoinColors.blackMedium2,
          child: NavigationDestination(
            icon: Image.asset(Assets.home, height: 22, width: 22),
            selectedIcon: Image.asset(Assets.homeColor, height: 22, width: 22),
            label: 'Home',
          ),
        ),
        Container(
          color: currentIndex == 1
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
          color: currentIndex == 2
              ? CoinColors.blackMedium1
              : CoinColors.blackMedium2,
          child: NavigationDestination(
            icon: Image.asset(Assets.point, height: 24, width: 24),
            selectedIcon: Image.asset(Assets.pointColor, height: 24, width: 24),
            label: 'Point',
          ),
        ),
        Container(
          color: currentIndex == 3
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
          color: currentIndex == 4
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
