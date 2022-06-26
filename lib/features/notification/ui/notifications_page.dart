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
        backgroundColor: CoinColors.black12,
        centerTitle: true,
        title: Text(
          "Notification",
          style: CoinTextStyle.title1.copyWith(fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              leading: CircleNotificationIcon(
                  icon: Badge(
                    position: BadgePosition.topEnd(top: -2),
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  color: CoinColors.orange),
              title: Text(
                "Yonqed SDN. BHD.",
                style:
                    CoinTextStyle.title4.copyWith(fontWeight: FontWeight.w800),
              ),
              subtitle: Text(
                "Mauris non ligul tempus lacinia velit.",
                style: CoinTextStyle.title5,
              ),
              trailing: const Text("28/4/2022"),
            ),
            const Divider(
              thickness: 2,
            ),
            ListTile(
              leading: CircleNotificationIcon(
                  icon: Badge(
                    position: BadgePosition.topEnd(top: -4),
                    child: Image.asset(
                      "assets/icons/coupon.png",
                      height: 25,
                      width: 25,
                    ),
                  ),
                  color: CoinColors.purple),
              title: Text(
                "Sonyod SDN. BHD.",
                style:
                    CoinTextStyle.title4.copyWith(fontWeight: FontWeight.w800),
              ),
              subtitle: Text(
                "Mauris non ligul tempus lacinia velit.",
                style: CoinTextStyle.title5,
              ),
              trailing: const Text("24/4/2022"),
            ),
            const Divider(
              thickness: 2,
            ),
            ListTile(
              leading: CircleNotificationIcon(
                  icon: Image.asset(
                    "assets/icons/news.png",
                    height: 25,
                    width: 25,
                  ),
                  color: CoinColors.green),
              title: Text(
                "Apple Store",
                style:
                    CoinTextStyle.title4.copyWith(fontWeight: FontWeight.w800),
              ),
              subtitle: Text(
                "Mauris non ligul tempus lacinia velit.",
                style: CoinTextStyle.title5,
              ),
              trailing: const Text("22/4/2022"),
            ),
            const Divider(thickness: 3),
            ListTile(
              leading: CircleNotificationIcon(
                  icon: Image.asset(
                    "assets/icons/lucky-draw.png",
                    height: 25,
                    width: 25,
                  ),
                  color: CoinColors.blueAccent),
              title: Text(
                "SengQuen SDN. BHD.",
                style:
                    CoinTextStyle.title4.copyWith(fontWeight: FontWeight.w800),
              ),
              subtitle: Text(
                "Mauris non ligul tempus lacinia velit.",
                style: CoinTextStyle.title5,
              ),
              trailing: const Text("22/4/2022"),
            ),
            const Divider(
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}

class CircleNotificationIcon extends StatelessWidget {
  const CircleNotificationIcon({Key? key, this.icon, required this.color})
      : super(key: key);
  final Widget? icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 40,
      // padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: icon,
    );
  }
}
