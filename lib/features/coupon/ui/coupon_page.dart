import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/coupon/components/discount_coupon_card.dart';
import 'package:ninecoin/typography/text_styles.dart';
import 'package:ninecoin/widgets/custom_appbar.dart';
import 'package:ninecoin/widgets/custom_search_box.dart';

import 'active_coupon_details.dart';
import 'purchased_coupon_details.dart';

class CouponPage extends StatefulWidget {
  const CouponPage({Key? key}) : super(key: key);

  @override
  State<CouponPage> createState() => _CouponPageState();
}

class _CouponPageState extends State<CouponPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

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
        TabBar(
          padding: const EdgeInsets.only(bottom: 12),
          unselectedLabelColor: CoinColors.black54,
          labelColor: CoinColors.orange,
          labelStyle: CoinTextStyle.orangeTitle3,
          tabs: const [
            Tab(text: 'Active'),
            Tab(text: 'Purchased'),
          ],
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: CoinColors.orange,
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              ActiveDiscountCopoun(),
              PurchasedDiscountCopoun(),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

class ActiveDiscountCopoun extends StatelessWidget {
  final List<String> copouns = [
    Assets.discountCopoun1,
    Assets.discountCopoun2,
    Assets.discountCopoun3,
    Assets.discountCopoun1,
  ];

  ActiveDiscountCopoun({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: copouns.length,
      itemBuilder: (context, index) {
        return DiscountCouponCard(
          onTap: () {
            Navigator.push(context, ActiveCouponDetails.route());
          },
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
  static Route route() {
    return MaterialPageRoute(builder: (context) => PurchasedDiscountCopoun());
  }

  PurchasedDiscountCopoun({Key? key}) : super(key: key);
  final List<String> copouns = [
    Assets.discountCopoun1,
    Assets.discountCopoun2,
    Assets.discountCopoun3,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: copouns.length,
      itemBuilder: (context, index) {
        return DiscountCouponCard(
          onTap: () {
            Navigator.push(context, PurchasedCouponDetails.route());
          },
          imageUrl: copouns[index],
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 12);
      },
    );
  }
}
