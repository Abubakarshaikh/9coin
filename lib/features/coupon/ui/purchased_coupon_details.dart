import 'package:flutter/material.dart';

class PurchasedCouponDetails extends StatelessWidget {
  static Route<PurchasedCouponDetails> route() {
    return MaterialPageRoute(builder: (_) => const PurchasedCouponDetails());
  }

  const PurchasedCouponDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Purchased Coupon Deytails.."),
      ),
    );
  }
}
