import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/typography/text_styles.dart';

class PurchaseTile extends StatelessWidget {
  // final Function()? onTap;
  final String date;
  final String title;
  final String subtitle;
  final int point;
  final bool isShowDivider;
  const PurchaseTile({
    Key? key,
    // this.onTap,
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
          leading: Text(date),
          title: Text(title, style: CoinTextStyle.title3),
          subtitle: Text(subtitle),
          trailing: Image.asset(Assets.download, height: 10, width: 10),
        ),
        const SizedBox(height: 8),
        isShowDivider ? const Divider() : const Opacity(opacity: 0),
      ],
    );
  }
}
