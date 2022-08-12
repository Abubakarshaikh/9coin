import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/point/ui/qr_code.dart';
import 'package:ninecoin/typography/text_styles.dart';
import 'package:ninecoin/widgets/custom_appbar.dart';
import '../components/point_option_card.dart';
import 'buy_point_package_page.dart';
import 'point_history_page.dart';
import 'redeemtions_page.dart';

class PointPage extends StatefulWidget {
  const PointPage({Key? key}) : super(key: key);

  @override
  State<PointPage> createState() => _PointPageState();
}

class _PointPageState extends State<PointPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          onTap: () {},
        ),
        Expanded(
          child: Container(
            color: CoinColors.black,
            constraints: const BoxConstraints.expand(),
            child: Column(
              children: [
                Text("Available",
                    style: CoinTextStyle.title1.copyWith(height: 3.5)),
                Text("20",
                    style: CoinTextStyle.headline1
                        .copyWith(color: CoinColors.orange, height: 1.2)),
                Text("Point", style: CoinTextStyle.title1.copyWith(height: 1)),
                Expanded(
                  child: GridView(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 36),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ),
                    children: [
                      PointOptionCard(
                        imageUrl: Assets.item,
                        onTap: () {
                          Navigator.push(context, BuyPointPackagePage.route());
                        },
                        title: "Buy Point Package",
                      ),
                      PointOptionCard(
                        imageUrl: Assets.qrcode,
                        onTap: () {
                          Navigator.push(context, PointQrCode.route());
                        },
                        title: "QR Code",
                      ),
                      PointOptionCard(
                        imageUrl: Assets.redemption,
                        onTap: () {
                          Navigator.push(context, RedeemtionsPage.route());
                        },
                        title: "Redemtions",
                      ),
                      PointOptionCard(
                        imageUrl: Assets.hisotry,
                        onTap: () {
                          Navigator.push(context, PointHistoryPage.route());
                        },
                        title: "History",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
