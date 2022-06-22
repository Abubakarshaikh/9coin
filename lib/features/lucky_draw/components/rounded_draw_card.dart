import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';

class RoundedDrawCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String pNumber;
  final String location;
  final Function() onTap;
  const RoundedDrawCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.pNumber,
    required this.location,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      height: 240,
      width: double.infinity,
      decoration: BoxDecoration(
          color: CoinColors.fullBlack,
          borderRadius: BorderRadius.circular(6.0)),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6.0),
                    child: Container(
                      color: CoinColors.white,
                      child: Image.asset(imageUrl, fit: BoxFit.contain),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title),
                Text(title),
                Text(title),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
