import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';

class ProfileCircularPicture extends StatelessWidget {
  const ProfileCircularPicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.5),
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: CoinColors.orange,
          width: 1.4,
        ),
      ),
      child: CircleAvatar(
        radius: 45,
        backgroundImage: AssetImage(Assets.profile),
      ),
    );
  }
}
