import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';

import 'generic_dialog.dart';

Future<bool> showPurchaseCouponDialog(BuildContext context) {
  return showGenericDialog<bool>(
    context: context,
    imageUrl: Assets.purchaseCoupon,
    title: "Purchase Coupon?",
    content: "Lorem Ipsum is simply dummy text of the printing and types.",
    optionsBuilder: () => {
      "Back": false,
      "Confirm": true,
    },
  ).then(
    (value) => value ?? false,
  );
}
