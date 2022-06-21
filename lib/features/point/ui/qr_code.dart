import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/typography/text_styles.dart';

class PointQrCode extends StatelessWidget {
  static Route<PointQrCode> route() {
    return MaterialPageRoute(builder: (context) => const PointQrCode());
  }

  const PointQrCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "QR Code",
          style: CoinTextStyle.title2Bold,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 260,
              width: 260,
              color: CoinColors.white,
              alignment: Alignment.center,
              child: Image.asset(
                Assets.profileqrcode,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 7),
          Text(
            "ID : 58893596683",
            style: CoinTextStyle.title2Bold,
          )
        ],
      ),
    );
  }
}
