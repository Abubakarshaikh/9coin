import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/category/ui/categories_page.dart';
import 'package:ninecoin/typography/text_styles.dart';
import 'package:ninecoin/widgets/custom_appbar.dart';
import 'package:ninecoin/widgets/custom_search_box.dart';
import '../components/category_circular_card.dart';
import '../components/rounded_feature_card.dart';
import '../components/rounded_news_card.dart';

class HomePage extends StatelessWidget {
  final Widget body;
  const HomePage({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoinColors.black12,
      body: body,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showSearchBox = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          onTap: () {
            setState(() {
              showSearchBox = showSearchBox ? false : true;
            });
          },
        ),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 16),
            child: Column(
              children: [
                showSearchBox ? const CustomSearchBox() : const SizedBox(),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(child: Image.asset("assets/pics/slider.jpg")),
                  ],
                ),
                const SizedBox(height: 16),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context, CategoryListPage.rout());
                            },
                            child: Text("View all",
                                style: CoinTextStyle.title3
                                    .copyWith(color: CoinColors.orange)),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CategoryCircularCard(
                            onTap: () {},
                            imageUrl: Assets.salon,
                            label: "A'Salon",
                          ),
                          CategoryCircularCard(
                            onTap: () {},
                            imageUrl: Assets.bag,
                            label: "Bag",
                          ),
                          CategoryCircularCard(
                            onTap: () {},
                            imageUrl: Assets.beautyIcon,
                            label: "Beauty",
                          ),
                          CategoryCircularCard(
                            onTap: () {},
                            imageUrl: Assets.electronic,
                            label: "Electronic",
                          ),
                          CategoryCircularCard(
                            onTap: () {},
                            imageUrl: Assets.fashion,
                            label: "Fashion",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Features", style: CoinTextStyle.title1),
                          InkWell(
                            onTap: () {},
                            child: Text("View all",
                                style: CoinTextStyle.title3
                                    .copyWith(color: CoinColors.orange)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          RoundedFeatureCard(
                            onTap: () {},
                            imageUrl: Assets.beautyPic,
                            title: "J'Qroue",
                            pNumber: "016 - 338 22888",
                            location: "Taman Berkeley, 41150 Klang, Selangor",
                          ),
                          RoundedFeatureCard(
                            onTap: () {},
                            imageUrl: Assets.bookShoop,
                            title: "ChangYi Book Shop",
                            pNumber: "017 - 169 5882",
                            location:
                                "No 11, Jln Blok 1, Felda Papan Timur, 81900.",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("News", style: CoinTextStyle.title1),
                          InkWell(
                            onTap: () {},
                            child: Text("View all",
                                style: CoinTextStyle.title3
                                    .copyWith(color: CoinColors.orange)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          RoundedNewsCard(
                            onTap: () {},
                            imageUrl: Assets.chickenRice1,
                            date: "3/5/2022",
                            title: "Price of Chicken Dishes...",
                            desc: "Lorem ipsum dolor sit amet,.",
                          ),
                          RoundedNewsCard(
                            onTap: () {},
                            imageUrl: Assets.maximise,
                            date: "10/5/2022",
                            title: "Maximise Your Creative",
                            desc: "Lorem ipsum dolor sit amet,.",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
