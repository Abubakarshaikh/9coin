import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    return BottomAppBar(
      elevation: 10,
      child: NavigationBar(
        height: 68,
        selectedIndex: currentIndex,
        onDestinationSelected: onDestinationSelected,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
            selectedIcon: Icon(Icons.home_rounded, color: CoinColors.black),
          ),
          NavigationDestination(
            icon: Icon(CupertinoIcons.square_grid_2x2),
            label: 'Coupaon',
            selectedIcon:
                Icon(CupertinoIcons.square_grid_2x2, color: CoinColors.black),
          ),
          NavigationDestination(
              icon: Icon(CupertinoIcons.search),
              selectedIcon:
                  Icon(CupertinoIcons.search, color: CoinColors.black),
              label: 'Point'),
          NavigationDestination(
              icon: Icon(Icons.local_offer_outlined),
              selectedIcon:
                  Icon(Icons.local_offer_outlined, color: CoinColors.black),
              label: 'Lucky Draw'),
          NavigationDestination(
              icon: Icon(CupertinoIcons.news),
              selectedIcon: Icon(CupertinoIcons.news, color: CoinColors.black),
              label: 'News'),
        ],
      ),
    );
  }
}
