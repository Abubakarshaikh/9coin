import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/typography/text_styles.dart';

class PointOptionCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final Function() onTap;
  const PointOptionCard(
      {Key? key,
      required this.title,
      required this.imageUrl,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: CoinColors.black12,
      ),
      child: Column(
        children: [
          Expanded(child: Image.asset(imageUrl, color: CoinColors.white)),
          Expanded(
              child: InkWell(
            onTap: onTap,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                title,
                style: CoinTextStyle.title2Bold,
                textAlign: TextAlign.center,
              ),
            ),
          )),
        ],
      ),
    );
  }
}
