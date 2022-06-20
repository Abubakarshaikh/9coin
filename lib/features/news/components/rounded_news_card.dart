import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';

class RoundedNewsCard extends StatelessWidget {
  final String imageUrl;
  final String date;
  final String title;
  final String desc;
  final Function() onTap;
  const RoundedNewsCard({
    Key? key,
    required this.imageUrl,
    required this.date,
    required this.title,
    required this.desc,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
        constraints:
            const BoxConstraints.expand(height: 260, width: double.infinity),
        decoration: BoxDecoration(
            color: CoinColors.fullBlack,
            borderRadius: BorderRadius.circular(6)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(6.0),
                    topRight: Radius.circular(6.0),
                  ),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.fitWidth,
                  ),
                )),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(date),
                    Text(title),
                    Text(desc, overflow: TextOverflow.ellipsis),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
