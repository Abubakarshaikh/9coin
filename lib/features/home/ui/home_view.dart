import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';
import '../components/my_bottom_navigation_bar.dart';
import 'home_page.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final ValueNotifier<int> _valueNotifier = ValueNotifier(0);

  final List<Widget> _screens = const [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
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
