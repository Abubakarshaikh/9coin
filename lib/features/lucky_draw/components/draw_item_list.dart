import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/features/lucky_draw/ui/draw_details_page.dart';
import 'rounded_draw_card.dart';

class DrawItemsList extends StatelessWidget {
  const DrawItemsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        RoundedDrawCard(
          onTap: () {
            Navigator.push(context, DrawDetailsPage.route());
          },
          imageUrl: Assets.iphone,
          title: "Yonqed SDN. BHD.",
          pNumber: "012 - 683 2269",
          location: "2a, Jalan Klebang Jaya 3, 75200 Melaka.",
        ),
        RoundedDrawCard(
          onTap: () {
            Navigator.push(context, DrawDetailsPage.route());
          },
          imageUrl: Assets.television2,
          title: "Yonqed SDN. BHD.",
          pNumber: "012 - 683 2269",
          location: "2a, Jalan Klebang Jaya 3, 75200 Melaka.",
        ),
        RoundedDrawCard(
          onTap: () {
            Navigator.push(context, DrawDetailsPage.route());
          },
          imageUrl: Assets.watch,
          title: "Yonqed SDN. BHD.",
          pNumber: "012 - 683 2269",
          location: "2a, Jalan Klebang Jaya 3, 75200 Melaka.",
        ),
      ],
    );
  }
}
