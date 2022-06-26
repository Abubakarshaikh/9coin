import 'package:flutter/material.dart';
import 'package:ninecoin/features/point/components/purchase_tile.dart';

class PurchaseHistoryPage extends StatelessWidget {
  const PurchaseHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      child: ListView(
        children: const [
          PurchaseTile(
            date: "28/4/2022",
            title: "Yonqed SDN. BHD.",
            subtitle: "- Earphone 6pro",
            point: 15,
          ),
          PurchaseTile(
            date: "24/4/2022",
            title: "Sonyod SDN. BHD.",
            subtitle: "- Shaep 55'' FHD",
            point: 50,
          ),
          PurchaseTile(
            date: "22/4/2022",
            title: "Appla Store",
            subtitle: "- Aphone 16 Pro 256TB",
            point: 90,
          ),
          PurchaseTile(
            date: "22/4/2022",
            title: "SengQuen SDN. BHD.",
            subtitle: "- HeuWoi Smart Watch Pro 2",
            point: 45,
            isShowDivider: false,
          ),
        ],
      ),
    );
  }
}
