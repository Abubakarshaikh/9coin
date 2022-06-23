
import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';

import 'redemptions_card.dart';

class RedeemedListTile extends StatelessWidget {
  const RedeemedListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      children: [
        RedemptionsCard(
            title: "Foundation",
            buttonText: "Use",
            buttonColor: CoinColors.blue),
        RedemptionsCard(
            title: "Snacks",
            buttonText: "Used",
            buttonColor: CoinColors.black54),
      ],
    );
  }
}
