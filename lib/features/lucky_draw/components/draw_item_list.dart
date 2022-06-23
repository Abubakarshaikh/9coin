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
          title: "Imperdiet Ex Non",
          boxTitle: "Iphone 13 Pro Max 256GB",
          date: "1/5/2022 - 31/5/2022",
        ),
        RoundedDrawCard(
          onTap: () {
            Navigator.push(context, DrawDetailsPage.route());
          },
          imageUrl: Assets.television2,
          title: "Imperdiet Ex Non",
          boxTitle: "Iphone 13 Pro Max 256GB",
          date: "1/5/2022 - 31/5/2022",
        ),
        RoundedDrawCard(
          onTap: () {
            Navigator.push(context, DrawDetailsPage.route());
          },
          imageUrl: Assets.watch2,
          title: "Imperdiet Ex Non",
          boxTitle: "Iphone 13 Pro Max 256GB",
          date: "1/5/2022 - 31/5/2022",
        ),
      ],
    );
  }
}
