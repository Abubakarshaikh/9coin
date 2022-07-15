import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/home/components/my_bottom_navigation_bar.dart';
import 'package:ninecoin/typography/text_styles.dart';
import 'package:ninecoin/utilities/dialogs/draw_point_dialog.dart';
import 'package:ninecoin/utilities/dialogs/drawn_successful_dialog.dart';
import 'package:ninecoin/widgets/lucky_draw_information_page.dart';

class DrawDetailsPage extends StatelessWidget {
  static route() {
    return MaterialPageRoute(builder: (context) {
      return const DrawDetailsPage();
    });
  }

  const DrawDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Imperdiet Ex Non"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: InkWell(
                onTap: () {
                  Navigator.push(context, LuckDrawInformationPage.route());
                },
                child: Image.asset(Assets.information, height: 20, width: 20)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(Assets.iphone2),
                    const SizedBox(height: 8.0),
                    Text("Imperdiet Ex Non", style: CoinTextStyle.orangeTitle2),
                    const SizedBox(height: 4.0),
                    Text(
                        '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et orci in quam porta condimentum. Mauris non ligula tempus, lacinia velit a, aliquam metus. Nulla atsapien scelerisque, imperdiet ex non.''',
                        style: CoinTextStyle.title3),
                    const SizedBox(height: 6.0),
                    const Divider(),
                    const SizedBox(height: 6.0),
                    Text("Rewards", style: CoinTextStyle.orangeTitle3),
                    const SizedBox(height: 4.0),
                    Text("Iphone 13 Pro Max 256GB",
                        style: CoinTextStyle.title3),
                    const SizedBox(height: 6.0),
                    const Divider(),
                    const SizedBox(height: 6.0),
                    Text("Participants", style: CoinTextStyle.orangeTitle3),
                    const SizedBox(height: 6.0),
                    Row(
                      children: [
                        Text("Number of Participants",
                            style: CoinTextStyle.title3
                                .copyWith(color: CoinColors.black54)),
                        const SizedBox(width: 24.0),
                        Text("236", style: CoinTextStyle.orangeTitle3),
                      ],
                    ),
                    const SizedBox(height: 24.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("**One additional prize for every 100 people**",
                            style: CoinTextStyle.orangeTitle3),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    const Divider(),
                    const SizedBox(height: 10.0),
                    Text("Pool Period", style: CoinTextStyle.orangeTitle3),
                    const SizedBox(height: 2.0),
                    Text("1/5/2022 - 31/5/2022", style: CoinTextStyle.title3),
                    const SizedBox(height: 10.0),
                    const Divider(),
                    const SizedBox(height: 10.0),
                    Text("Term and Condition",
                        style: CoinTextStyle.orangeTitle3),
                    const SizedBox(height: 6.0),
                    const Text(
                      '''1. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n\n2. Proin et orci in quam porta condimentum. Mauris non ligula tempus, lacinia velit a, aliquam metus. \n\n3. Nulla atone sapien scelerisque, imperdiet exq non, venenatis mi.
                    ''',
                    ),
                    const Divider(),
                    const SizedBox(height: 10.0),
                    Text("Draw in Imperdiet Ex Non",
                        style: CoinTextStyle.orangeTitle3),
                    const SizedBox(height: 16.0),
                    SizedBox(
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Each Point Price",
                              style: CoinTextStyle.title3
                                  .copyWith(color: CoinColors.black54)),
                          Text("50 Point", style: CoinTextStyle.title3),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    SizedBox(
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("No. Of Points(0/5)",
                              style: CoinTextStyle.title3
                                  .copyWith(color: CoinColors.black54)),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 2),
                            height: 26,
                            decoration: BoxDecoration(
                                color: CoinColors.white,
                                borderRadius: BorderRadius.circular(4.0)),
                            child: DropdownButton(
                              iconEnabledColor: CoinColors.black54,
                              style: CoinTextStyle.title3
                                  .copyWith(color: CoinColors.black12),
                              underline: const SizedBox(),
                              dropdownColor: CoinColors.white,
                              value: 1,
                              items: List.generate(3, (int index) {
                                return DropdownMenuItem(
                                  value: index,
                                  child: Text("$index"),
                                );
                              }),
                              onChanged: (object) {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    SizedBox(
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total Amount",
                              style: CoinTextStyle.title3
                                  .copyWith(color: CoinColors.black54)),
                          Text("0",
                              style: CoinTextStyle.title3,
                              textAlign: TextAlign.start),
                        ],
                      ),
                    ),
                    const SizedBox(height: 6.0),
                    const Divider(),
                    const SizedBox(height: 6.0),
                  ],
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  if (await showDrawPointDialog(context)) {
                    await showDrawnSuccessfulDialog(context);
                  }
                },
                child: const Text("Draw"))
          ],
        ),
      ),
    );
  }
}
