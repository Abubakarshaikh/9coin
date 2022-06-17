import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/typography/text_styles.dart';
import 'package:ninecoin/utilities/dialogs/purchase_coupon.dart';

class CopounPage extends StatefulWidget {
  const CopounPage({Key? key}) : super(key: key);

  @override
  State<CopounPage> createState() => _CopounPageState();
}

class _CopounPageState extends State<CopounPage> {
  final ValueNotifier<int> currentPageIndex = ValueNotifier(0);
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    currentPageIndex.value = controller.initialPage;
    return Column(
      children: [
        Container(
          color: CoinColors.fullBlack,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, color: CoinColors.black54),
              hintText: "Search",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: ValueListenableBuilder<int>(
            valueListenable: currentPageIndex,
            builder: (context, state, widget) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        currentPageIndex.value = 0;
                        controller.animateToPage(0,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut);
                      },
                      child: Column(
                        children: [
                          Text("Active",
                              style: CoinTextStyle.title2.copyWith(
                                  color: CoinColors.orange,
                                  fontWeight: FontWeight.w600)),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 12),
                            height: 2.0,
                            color: state == 0
                                ? CoinColors.orange
                                : CoinColors.transparent,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        currentPageIndex.value = 1;
                        controller.animateToPage(1,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut);
                      },
                      child: Column(
                        children: [
                          Text("Purchased",
                              style: CoinTextStyle.title2.copyWith(
                                  color: CoinColors.orange,
                                  fontWeight: FontWeight.w600)),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 12),
                            height: 2.0,
                            color: state == 1
                                ? CoinColors.orange
                                : CoinColors.transparent,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        Flexible(
          child: PageView(
            controller: controller,
            onPageChanged: (int page) {
              currentPageIndex.value = page;
            },
            children: [
              ActiveDiscountCopoun(),
              PurchasedDiscountCopoun(),
            ],
          ),
        ),
      ],
    );
  }
}

class DiscountCouponCard extends StatelessWidget {
  final String imageUrl;
  final Function()? onTap;
  const DiscountCouponCard({Key? key, required this.imageUrl, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Expanded(child: Image.asset(imageUrl)),
        ],
      ),
    );
  }
}

class ActiveDiscountCopoun extends StatelessWidget {
  final List<String> copouns = [
    Assets.discountCopoun1,
    Assets.discountCopoun2,
    Assets.discountCopoun3
  ];

  ActiveDiscountCopoun({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: copouns.length,
      itemBuilder: (context, index) {
        return DiscountCouponCard(
          onTap: () {},
          imageUrl: copouns[index],
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 12);
      },
    );
  }
}

class PurchasedDiscountCopoun extends StatelessWidget {
  PurchasedDiscountCopoun({Key? key}) : super(key: key);
  final List<String> copouns = [
    Assets.discountCopoun1,
    Assets.discountCopoun2,
    Assets.discountCopoun3
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: copouns.length,
      itemBuilder: (context, index) {
        return DiscountCouponCard(
          onTap: () {},
          imageUrl: copouns[index],
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 12);
      },
    );
  }
}
