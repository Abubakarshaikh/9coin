import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/point/ui/redeemed_card_details_page.dart';

import 'redeemptions_card.dart';

class RedeemedListTile extends StatelessWidget {
  const RedeemedListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      children: [
        RedeemptionsCard(
          title: "Foundation",
          buttonText: "Use",
          buttonColor: CoinColors.blue,
          onTap: () {
            Navigator.push(context, RedeemedCardDetailsPage.route());
          },
        ),
        const RedeemptionsCard(
          title: "Snacks",
          buttonText: "Used",
          buttonColor: CoinColors.black54,
          
        ),
      ],
    );
  }
}
