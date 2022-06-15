import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/typography/text_styles.dart';

class NotificationPage extends StatelessWidget {
  static route() {
    return MaterialPageRoute(builder: (context) => const NotificationPage());
  }

  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Notification", style: CoinTextStyle.title1),
      ),
      body: Column(
        children: [
          Container(
            child: ListTile(
              leading: CircleNotificationIcon(
                  icon: Badge(
                    position: BadgePosition.topEnd(top: -17, end: -5),
                    badgeContent: const Text(''),
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  color: CoinColors.orange),
              title: Text(
                "Yonqed SDN. BHD.",
                style: CoinTextStyle.title2,
              ),
              subtitle: Text(
                "Mauris non ligul tempus lacinia velit.",
                style: CoinTextStyle.title4,
              ),
              trailing: Text("28/4/2022"),
            ),
          )
        ],
      ),
    );
  }
}

class CircleNotificationIcon extends StatelessWidget {
  const CircleNotificationIcon(
      {Key? key, required this.icon, required this.color})
      : super(key: key);
  final Widget icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: icon,
    );
  }
}
