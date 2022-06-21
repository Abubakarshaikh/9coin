import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/typography/text_styles.dart';

class LuckDrawInformationPage extends StatelessWidget {
  static Route<LuckDrawInformationPage> route() {
    return MaterialPageRoute(
        builder: (context) => const LuckDrawInformationPage());
  }

  const LuckDrawInformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Lucky Draw Information"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "How To Use a Lucky Draw",
              style: CoinTextStyle.title1Bold.copyWith(
                color: CoinColors.orange,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              "Mauris non ligula tempus, lacinia velit a, aliquam metus. Nulla at sapien scelerisque, imperdiet ex non, venenatis mi.",
              style: CoinTextStyle.title3.copyWith(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
