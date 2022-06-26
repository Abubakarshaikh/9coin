import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/typography/text_styles.dart';

class PurchaseTile extends StatelessWidget {
  final Function()? onTap;
  final String date;
  final String title;
  final String subtitle;
  final int point;
  final bool isShowDivider;
  const PurchaseTile({
    Key? key,
    this.onTap,
    required this.date,
    required this.title,
    required this.subtitle,
    required this.point,
    this.isShowDivider = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ListTile(
          onTap: onTap,
          leading: Text(date),
          title: Text(title, style: CoinTextStyle.title4),
          subtitle: Text(subtitle, style: CoinTextStyle.title4),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("$point point", style: CoinTextStyle.orangeTitle4),
              const SizedBox(width: 10),
              Image.asset(Assets.download, height: 15, width: 15),
            ],
          ),
        ),
        const SizedBox(height: 8),
        isShowDivider ? const Divider() : const Opacity(opacity: 0),
      ],
    );
  }
}
