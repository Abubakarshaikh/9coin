import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/typography/text_styles.dart';

import 'coupon/ui/coupon_page.dart';

class LuckydrawPage extends StatefulWidget {
  const LuckydrawPage({Key? key}) : super(key: key);

  @override
  State<LuckydrawPage> createState() => _LuckydrawPageState();
}

class _LuckydrawPageState extends State<LuckydrawPage> {
  final ValueNotifier<int> currentPageIndex = ValueNotifier(0);

  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    currentPageIndex.value = controller.initialPage;

    return Column(
      children: [
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
                          Text("Draw",
                              style: CoinTextStyle.title2.copyWith(
                                color: state == 1
                                    ? CoinColors.black54
                                    : CoinColors.orange,
                                fontWeight: FontWeight.w600,
                              )),
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
                          Text("Drawn",
                              style: CoinTextStyle.title2.copyWith(
                                  color: state == 0
                                      ? CoinColors.black54
                                      : CoinColors.orange,
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
