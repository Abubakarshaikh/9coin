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
    return Container(
      height: 60,
      child: BottomNavigationBar(
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: onDestinationSelected,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_grid_2x2),
            label: 'Coupaon',
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label: 'Point'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer_outlined), label: 'Lucky Draw'),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.news),
            label: 'News',
          ),
        ],
      ),
    );
  }
}
