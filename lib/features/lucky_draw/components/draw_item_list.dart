import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';

import '../../category/ui/category_details_page.dart';
import 'rounded_draw_card.dart';

class DrawItemsList extends StatelessWidget {
  const DrawItemsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        RoundedDrawCard(
          onTap: () {
            Navigator.push(context, CategoryDetailsPage.rout());
          },
          imageUrl: Assets.iphone,
          title: "Yonqed SDN. BHD.",
          pNumber: "012 - 683 2269",
          location: "2a, Jalan Klebang Jaya 3, 75200 Melaka.",
        ),
        RoundedDrawCard(
          onTap: () {
            Navigator.push(context, CategoryDetailsPage.rout());
          },
          imageUrl: Assets.television2,
          title: "Yonqed SDN. BHD.",
          pNumber: "012 - 683 2269",
          location: "2a, Jalan Klebang Jaya 3, 75200 Melaka.",
        ),
        RoundedDrawCard(
          onTap: () {
            Navigator.push(context, CategoryDetailsPage.rout());
          },
          imageUrl: Assets.watch2,
          title: "Yonqed SDN. BHD.",
          pNumber: "012 - 683 2269",
          location: "2a, Jalan Klebang Jaya 3, 75200 Melaka.",
        ),
      ],
    );
  }
}
