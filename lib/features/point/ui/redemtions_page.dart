import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/typography/text_styles.dart';

import '../components/redeem_list_tile.dart';
import '../components/redeemed_list_tile.dart';

class RedemtionsPage extends StatefulWidget {
  static route() {
    return MaterialPageRoute(builder: (_) => const RedemtionsPage());
  }

  const RedemtionsPage({Key? key}) : super(key: key);

  @override
  State<RedemtionsPage> createState() => _RedemtionsPageState();
}

class _RedemtionsPageState extends State<RedemtionsPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CoinColors.fullBlack,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Redemptions"),
          ),
          body: Column(
            children: [
              Container(
                color: CoinColors.mediumBlack,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                  ),
                ),
              ),
              TabBar(
                unselectedLabelColor: CoinColors.black54,
                labelColor: CoinColors.orange,
                labelStyle: CoinTextStyle.orangeTitle3,
                tabs: const [
                  Tab(text: 'Redeem'),
                  Tab(text: 'Redeemded'),
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: CoinColors.orange,
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    RedeemListTile(),
                    RedeemedListTile(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
