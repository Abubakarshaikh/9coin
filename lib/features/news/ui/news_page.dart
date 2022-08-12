import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/news/components/rounded_news_card.dart';
import 'package:ninecoin/widgets/custom_appbar.dart';
import 'package:ninecoin/widgets/custom_search_box.dart';

import 'news_details_page.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  bool showSearchBar = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          onTap: () {
            setState(() {
              showSearchBar = showSearchBar ? false : true;
            });
          },
        ),
        showSearchBar ? const CustomSearchBox() : const SizedBox(),
        const SizedBox(height: 16),
        Expanded(
          child: Container(
            color: CoinColors.black,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
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
          ),
        ),
      ],
    );
  }
}
