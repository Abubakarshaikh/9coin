import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/typography/text_styles.dart';

class CategoryCircularCard extends StatelessWidget {
  final String imageUrl;
  final String label;
  final Function() onTap;
  const CategoryCircularCard({
    Key? key,
    required this.imageUrl,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(6.0),
            padding: const EdgeInsets.all(12.0),
            decoration: const BoxDecoration(
              color: CoinColors.black12,
              shape: BoxShape.circle,
            ),
            child: Image.asset(imageUrl, height: 40, width: 40),
          ),
          Text(label,
              style: CoinTextStyle.title3.copyWith(color: CoinColors.white)),
        ],
      ),
    );
  }
}
