import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/typography/text_styles.dart';

import 'package_payment_page.dart';

class PackageBuyPage extends StatelessWidget {
  static route() {
    return MaterialPageRoute(builder: (_) => const PackageBuyPage());
  }

  const PackageBuyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Package 2"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Package 2",
                      style: CoinTextStyle.title1
                          .copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  const Text(
                      "Mauris non ligula tempus, lacinia velit a, aliquam metus. Nulla at sapien scelerisque, imperdiet ex non, venenatis mi."),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "20",
                          style: CoinTextStyle.title1Bold
                              .copyWith(color: CoinColors.orange),
                          children: [
                            TextSpan(
                              text: "Point",
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          text: "Total",
                          children: [
                            TextSpan(
                              text: "RM 65",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 24),
                    child: Divider(thickness: 1.8),
                  ),
                  const Text("Term and Condition"),
                  const Text(
                      '''1. Lorem ipsum dolor sit amet, consectetur adipiscing
elit \n2. Proin et orci in quam porta condimentum. Mauris
non ligula tempus, lacinia velit a, aliquam metus \n3.  Nulla atone sapien scelerisque, imperdiet exq non,
venenatis mi \n4. ullam arcu leo, blandit nec consequat vel, molestie
et sem \n5. Praesent pretium erat at nulla euismod, a rutrum elit
blandit. Etiam nec aliquam metus.'''),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, PackagePaymentPage.route());
                },
                child: const Text("Buy"))
          ],
        ),
      ),
    );
  }
}
