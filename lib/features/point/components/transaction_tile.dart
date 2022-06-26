import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/typography/text_styles.dart';


class TransactionTile extends StatelessWidget {
  final Function()? onTap;
  final String date;
  final String packageNum;
  final int point;
  final String pointDetail;
  final bool isShowDivider;

  const TransactionTile(
      {Key? key,
      this.onTap,
      required this.date,
      required this.packageNum,
      required this.point,
      this.isShowDivider = true,
      required this.pointDetail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            leading: Text(date),
            title: Text(packageNum, style: CoinTextStyle.title3),
            subtitle: RichText(
              text: TextSpan(
                style: CoinTextStyle.title3Bold.copyWith(
                  color: CoinColors.dialogTextColor,
                  height: 1,
                ),
                text: "$point",
                children: [
                  const TextSpan(
                    text: " ",
                  ),
                  TextSpan(
                    style: CoinTextStyle.title3,
                    text: "Point",
                  ),
                ],
              ),
            ),
            trailing: Text(pointDetail, style: CoinTextStyle.orangeTitle2),
          ),
          const SizedBox(height: 8),
          isShowDivider ? const Divider() : const Opacity(opacity: 0),
        ],
      ),
    );
  }
}
