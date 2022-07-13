import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/category/ui/categories_page.dart';
import 'package:ninecoin/features/notification/ui/notifications_page.dart';
import 'package:ninecoin/typography/text_styles.dart';
import '../../profile/ui/profile_page.dart';
import '../components/category_circular_card.dart';
import '../components/circle_icon.dart';
import '../components/rounded_feature_card.dart';
import '../components/rounded_news_card.dart';

class HomePage extends StatelessWidget {
  final Widget body;
  const HomePage({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 120,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Image.asset(Assets.appLogo),
        ),
        actions: [
          CircleIcon(
            onTap: () {
              Navigator.push(context, NotificationPage.route());
            },
            icon: Badge(
              padding: const EdgeInsets.all(4),
              position: BadgePosition.topEnd(top: -2, end: -8),
              badgeContent: Text('2', style: CoinTextStyle.title5),
              child: const Icon(Icons.notifications,
                  color: CoinColors.orange, size: 20),
            ),
          ),
          const SizedBox(width: 12.0),
          CircleIcon(
            onTap: () {
              Navigator.push(context, ProfilePage.route());
            },
            icon: Image.asset(
              Assets.profileIcon,
              height: 20.5,
              width: 20.5,
              color: CoinColors.orange,
            ),
          ),
          const SizedBox(width: 16.0),
        ],
      ),
      backgroundColor: CoinColors.black12,
      body: body,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: CoinColors.black,
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
                    ),
                  ),
                ),
              ],
            ),
          ),
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
                      color: CoinColors.green,
                      label: "A'Salon",
                    ),
                    CategoryCircularCard(
                      onTap: () {},
                      imageUrl: Assets.beautyIcon,
                      color: CoinColors.red12,
                      label: "Beauty",
                    ),
                    CategoryCircularCard(
                      onTap: () {},
                      imageUrl: Assets.electronic,
                      color: CoinColors.orange12,
                      label: "Electronic",
                    ),
                    CategoryCircularCard(
                      onTap: () {},
                      imageUrl: Assets.groceries,
                      color: CoinColors.yellow,
                      label: "Groceries",
                    ),
                    CategoryCircularCard(
                      onTap: () {},
                      imageUrl: Assets.sports,
                      color: CoinColors.blueAccent,
                      label: "Sports",
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
                      location: "No 11, Jln Blok 1, Felda Papan Timur, 81900.",
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
    );
  }
}
