import 'package:flutter/material.dart';

class ActiveCouponDetails extends StatelessWidget {
  static Route<ActiveCouponDetails> route() {
    return MaterialPageRoute(builder: (_) => const ActiveCouponDetails());
  }

  const ActiveCouponDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Active Coupon Deytails.."),
      ),
    );
  }
}
