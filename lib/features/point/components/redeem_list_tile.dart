import 'package:flutter/material.dart';

import 'redemptions_card.dart';

class RedeemListTile extends StatelessWidget {
  const RedeemListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      children: [
        RedemptionsCard(title: "Foundation"),
        RedemptionsCard(title: "Snacks"),
      ],
    );
  }
}