import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/typography/text_styles.dart';
import 'package:ninecoin/widgets/custom_appbar.dart';
import 'package:ninecoin/widgets/custom_search_box.dart';

import '../components/draw_item_list.dart';
import '../components/lucky_drawn_Items.dart';

class LuckydrawPage extends StatefulWidget {
  const LuckydrawPage({Key? key}) : super(key: key);

  @override
  State<LuckydrawPage> createState() => _LuckydrawPageState();
}

class _LuckydrawPageState extends State<LuckydrawPage>
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
        const SizedBox(height: 12),
        Container(
          color: CoinColors.mediumBlack,
          child: TabBar(
            unselectedLabelColor: CoinColors.black54,
            labelColor: CoinColors.orange,
            labelStyle: CoinTextStyle.orangeTitle3,
            tabs: const [
              Tab(text: 'Draw'),
              Tab(text: 'Drawn'),
            ],
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: CoinColors.orange,
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const [
              DrawItemsList(),
              LuckyDrwanItems(),
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
