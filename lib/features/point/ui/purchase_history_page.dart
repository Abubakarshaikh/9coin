import 'package:flutter/material.dart';
import 'package:ninecoin/features/point/components/purchase_tile.dart';

class PurchaseHistoryPage extends StatelessWidget {
  const PurchaseHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        PurchaseTile(
          date: "28/4/2022",
          title: "Yonqed SDN. BHD.",
          subtitle: "- Earphone 6pro",
          point: 15,
        ),
        PurchaseTile(
          date: "28/4/2022",
          title: "Yonqed SDN. BHD.",
          subtitle: "- Earphone 6pro",
          point: 15,
        ),
        PurchaseTile(
          date: "28/4/2022",
          title: "Yonqed SDN. BHD.",
          subtitle: "- Earphone 6pro",
          point: 15,
        ),
        PurchaseTile(
          date: "28/4/2022",
          title: "Yonqed SDN. BHD.",
          subtitle: "- Earphone 6pro",
          point: 15,
          isShowDivider: false,
        ),
      ],
    );
  }
}
