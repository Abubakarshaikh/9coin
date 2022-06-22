import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/news/components/rounded_news_card.dart';

import 'news_details_page.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CoinColors.black,
      child: ListView(
        children: [
          const SizedBox(height: 12),
          RoundedNewsCard(
            onTap: () {
              Navigator.push(context, NewsDetailsPage.route());
            },
            imageUrl: Assets.chickenRice1,
            date: "23 May 2022",
            title: "Prices of chicken dishes may go up",
            desc:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et orci in quam porta condimentum elat...",
          ),
          RoundedNewsCard(
            onTap: () {
              Navigator.push(context, NewsDetailsPage.route());
            },
            imageUrl: Assets.maximise,
            date: "19 May 2022",
            title: "Prices of chicken dishes may go up",
            desc:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et orci in quam porta condimentum elat...",
          ),
        ],
      ),
    );
  }
}
