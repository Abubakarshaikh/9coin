import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/components/large_circle_icon.dart';
import 'package:ninecoin/components/circle_icon.dart';
import 'package:ninecoin/components/rounded_card.dart';
import 'package:ninecoin/typography/text_styles.dart';
import 'assets/assets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: Image.asset(Assets.appLogo)),
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleIcon(
                            icon: Badge(
                                badgeContent: const Text('3'),
                                child: const Icon(Icons.notifications))),
                        const SizedBox(width: 12),
                        CircleIcon(
                            icon: Image.asset(Assets.profileIcon,
                                height: 20,
                                width: 20,
                                color: CoinColors.orange)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
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
            // Expanded(
            //   child: Column(
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.only(right: 16),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.end,
            //           children: [
            //             Text("View all",
            //                 style: CoinTextStyle.title2
            //                     .copyWith(color: CoinColors.orange)),
            //           ],
            //         ),
            //       ),
            //       Expanded(
            //         child: ListView(
            //           shrinkWrap: true,
            //           scrollDirection: Axis.horizontal,
            //           children: [
            //             LargeCircleIcon(
            //               imageUrl: Assets.salon,
            //               color: CoinColors.green,
            //               label: "A'Salon",
            //             ),
            //             LargeCircleIcon(
            //               imageUrl: Assets.beautyIcon,
            //               color: CoinColors.red12,
            //               label: "Beauty",
            //             ),
            //             LargeCircleIcon(
            //               imageUrl: Assets.electronic,
            //               color: CoinColors.orange12,
            //               label: "Electronic",
            //             ),
            //             LargeCircleIcon(
            //               imageUrl: Assets.groceries,
            //               color: CoinColors.yellow,
            //               label: "Groceries",
            //             ),
            //             LargeCircleIcon(
            //               imageUrl: Assets.sports,
            //               color: CoinColors.blueAccent,
            //               label: "Sports",
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Features"),
                        Text("View all",
                            style: CoinTextStyle.title2
                                .copyWith(color: CoinColors.orange)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        RoundedCard(
                          imageUrl: Assets.beautyPic,
                          title: "J'Qroue",
                          pNumber: "016 - 338 22888",
                          location: "Taman Berkeley, 41150 Klang, Selangor",
                        ),
                        RoundedCard(
                          imageUrl: Assets.beautyPic,
                          title: "J'Qroue",
                          pNumber: "016 - 338 22888",
                          location: "Taman Berkeley, 41150 Klang, Selangor",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
