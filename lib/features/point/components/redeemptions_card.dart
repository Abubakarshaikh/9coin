import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/typography/text_styles.dart';

// class RedeemptionsCard extends StatelessWidget {
//   final String title;
//   final Color buttonColor;
//   final String buttonText;
//   final String imageUrl;
//   final Function()? onTap;
//   const RedeemptionsCard({
//     Key? key,
//     required this.title,
//     this.buttonText = "Redeem",
//     this.buttonColor = CoinColors.dialogTextColor,
//     this.onTap,
//     required this.imageUrl,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
//       height: 268,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         color: CoinColors.mediumBlack,
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Expanded(
//             child: ClipRRect(
//               borderRadius: const BorderRadius.only(
//                 topLeft: Radius.circular(10.0),
//                 topRight: Radius.circular(10.0),
//               ),
//               child: Image.asset(imageUrl, fit: BoxFit.cover),
//             ),
//           ),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Text(title, style: CoinTextStyle.orangeTitle2),
//                   Row(mainAxisAlignment: MainAxisAlignment.start, children: [
//                     Image.asset(Assets.shop, height: 14, width: 14),
//                     const SizedBox(width: 12),
//                     Text("J'Qroue", style: CoinTextStyle.title4)
//                   ]),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Image.asset(Assets.address, height: 14, width: 14),
//                       const SizedBox(width: 12),
//                       Text("2a, Jalan Klebang Jaya 3, 75200 Melaka.",
//                           style: CoinTextStyle.title4),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       RichText(
//                         text: TextSpan(
//                           text: "25",
//                           style:
//                               CoinTextStyle.orangeTitle1.copyWith(fontSize: 26),
//                           children: [
//                             TextSpan(
//                               style: CoinTextStyle.orangeTitle5,
//                               text: " Point",
//                             ),
//                           ],
//                         ),
//                       ),
//                       InkWell(
//                         onTap: onTap,
//                         child: Container(
//                           alignment: Alignment.center,
//                           width: 75,
//                           height: 30,
//                           decoration: BoxDecoration(
//                             color: buttonColor,
//                             borderRadius: BorderRadius.circular(6.0),
//                           ),
//                           child: Text(buttonText),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class RedeemptionsCard extends StatelessWidget {
  final String imageUrl;
  final String point;
  final String title;
  final String pNumber;
  final String location;
  final Function() onTap;

  const RedeemptionsCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.pNumber,
    required this.location,
    required this.onTap,
    required this.point,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(6.0),
            width: 260,
            height: 170,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              color: CoinColors.fullBlack,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 4,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(6.0),
                            topRight: Radius.circular(6.0),
                          ),
                          child: Image.asset(imageUrl, fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(title,
                            style: CoinTextStyle.title4.copyWith(
                                color: CoinColors.orange,
                                fontWeight: FontWeight.w600)),
                      ),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(Icons.phone, size: 16.0),
                          ),
                          Text(pNumber, style: CoinTextStyle.title5),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(Icons.location_on_rounded, size: 16.0),
                          ),
                          Flexible(
                            child: Text(location,
                                style: CoinTextStyle.title5
                                    .copyWith(overflow: TextOverflow.ellipsis)),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: RichText(
                              text: TextSpan(
                                text: point,
                                style: CoinTextStyle.orangeTitle2.copyWith(
                                    fontSize: 22, fontWeight: FontWeight.w700),
                                children: [
                                  TextSpan(
                                    style: CoinTextStyle.orangeTitle4,
                                    text: " Point",
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // const SizedBox(height: 6.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
