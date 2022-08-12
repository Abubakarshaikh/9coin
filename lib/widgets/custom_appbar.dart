import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/home/components/components.dart';
import 'package:ninecoin/features/notification/ui/notifications_page.dart';
import 'package:ninecoin/features/profile/ui/profile_page.dart';
import 'package:ninecoin/typography/text_styles.dart';

class CustomAppBar extends StatelessWidget {
  final VoidCallback onTap;
  const CustomAppBar({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
      child: Row(
        children: [
          Image.asset(Assets.appLogo, width: 120),
          const Spacer(),
          CircleIcon(
            onTap: onTap,
            icon: Image.asset(
              Assets.search,
              height: 19.5,
              width: 19.5,
              color: CoinColors.orange,
            ),
          ),
          const SizedBox(width: 12.0),
          CircleIcon(
            onTap: () {
              Navigator.push(context, NotificationPage.route());
            },
            icon: Badge(
              padding: const EdgeInsets.all(4),
              position: BadgePosition.topEnd(top: -2, end: -8),
              badgeContent: Text('2', style: CoinTextStyle.title5),
              child: const Icon(Icons.notifications,
                  color: CoinColors.orange, size: 20),
            ),
          ),
          const SizedBox(width: 12.0),
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
    );
  }
}
