import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/point/ui/redeemed_card_details_page.dart';

import 'redeemptions_card.dart';

class RedeemedListTile extends StatelessWidget {
  const RedeemedListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.9,
        ),
        children: [
          RedeemptionsCard(
            imageUrl: Assets.television1,
            title: "Smart Television",
            onTap: () {
               Navigator.push(context, RedeemedCardDetailsPage.route());
            },
            pNumber: "J'Qroue",
            location: "2a, Jalan Klebang Jaya 3",
            point: "790",
          ),
          RedeemptionsCard(
            imageUrl: Assets.earphone,
            title: "Earphone",
            onTap: () {},
            pNumber: "YQJ Store",
            location: "2a, Jalan Klebang Jaya 3",
            point: "68",
          ),
          RedeemptionsCard(
            imageUrl: Assets.smartphone,
            title: "Iphone 12",
            onTap: () {},
            pNumber: "Ypple Store",
            location: "2a, Jalan Klebang Jaya 3",
            point: "1099",
          ),
          RedeemptionsCard(
            imageUrl: Assets.laptop,
            title: "Laptop",
            onTap: () {},
            pNumber: "Quawei Store",
            location: "2a, Jalan Klebang Jaya 3",
            point: "635",
          ),
          RedeemptionsCard(
            imageUrl: Assets.smartwatch,
            title: "Smart Watch",
            onTap: () {},
            pNumber: "Quawei Store",
            location: "2a, Jalan Klebang Jaya 3",
            point: "890",
          ),
          RedeemptionsCard(
            imageUrl: Assets.camera,
            title: "Wakon Camera",
            onTap: () {},
            pNumber: "J'Qroue",
            location: "2a, Jalan Klebang Jaya 3",
            point: "1650",
          ),
        ],
      ),
    );
  }
}
