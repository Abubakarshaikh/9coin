import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/typography/text_styles.dart';
import 'package:ninecoin/widgets/custom_search_box.dart';

import '../../../assets/assets.dart';
import '../../home/components/circle_icon.dart';
import '../components/redeem_list_tile.dart';
import '../components/redeemed_list_tile.dart';

class RedeemtionsPage extends StatefulWidget {
  static route() {
    return MaterialPageRoute(builder: (_) => const RedeemtionsPage());
  }

  const RedeemtionsPage({Key? key}) : super(key: key);

  @override
  State<RedeemtionsPage> createState() => _RedeemtionsPageState();
}

class _RedeemtionsPageState extends State<RedeemtionsPage>
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
    return Container(
      color: CoinColors.fullBlack,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Redemptions"),
            actions: [
              CircleIcon(
                onTap: () {
                  setState(() {
                    showSearchBar = showSearchBar ? false : true;
                  });
                },
                icon: Image.asset(
                  Assets.search,
                  height: 19.5,
                  width: 19.5,
                  color: CoinColors.orange,
                ),
              ),
              const SizedBox(width: 18.0),
            ],
          ),
          body: Column(
            children: [
              showSearchBar ? const CustomSearchBox() : const SizedBox(),
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
