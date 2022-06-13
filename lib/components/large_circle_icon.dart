import 'package:flutter/material.dart';
import 'package:ninecoin/typography/text_styles.dart';

class LargeCircleIcon extends StatelessWidget {
  final String imageUrl;
  final String label;
  final Color color;
  const LargeCircleIcon(
      {Key? key,
      required this.imageUrl,
      required this.color,
      required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(6.0),
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: Image.asset(imageUrl, height: 40, width: 40),
        ),
        Text(label, style: CoinTextStyle.title2),
      ],
    );
  }
}
