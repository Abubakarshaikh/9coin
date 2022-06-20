import 'package:flutter/material.dart';

class DiscountCouponCard extends StatelessWidget {
  final String imageUrl;
  final Function()? onTap;
  const DiscountCouponCard({Key? key, required this.imageUrl, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Expanded(child: Image.asset(imageUrl)),
        ],
      ),
    );
  }
}