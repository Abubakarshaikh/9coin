import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ninecoin/features/point/ui/redeem_card_details_page.dart';

import 'redeemptions_card.dart';

class RedeemListTile extends StatelessWidget {
  const RedeemListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      children: [
        RedeemptionsCard(
          title: "Foundation",
          onTap: () {
            Navigator.push(context, RedeemCardDetailsPage.route());
          },
        ),
        const RedeemptionsCard(title: "Snacks"),
      ],
    );
  }
}
