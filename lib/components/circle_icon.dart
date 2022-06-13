import 'package:flutter/material.dart';

import '../colors/colors.dart';

class CircleIcon extends StatelessWidget {
  final Widget icon;

  const CircleIcon({Key? key, required this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: CoinColors.black,
      ),
      child: icon,
    );
  }
}
