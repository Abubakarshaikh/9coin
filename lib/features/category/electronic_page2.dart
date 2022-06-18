import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/typography/text_styles.dart';

class ElectronicPage2 extends StatefulWidget {
  static Route rout() {
    return MaterialPageRoute(builder: (context) => const ElectronicPage2());
  }

  const ElectronicPage2({Key? key}) : super(key: key);

  @override
  State<ElectronicPage2> createState() => _ElectronicPage2State();
}

class _ElectronicPage2State extends State<ElectronicPage2> {
  final ValueNotifier<int> currentPageIndex = ValueNotifier(0);
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    currentPageIndex.value = controller.initialPage;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(145),
          child: AppBar(
            centerTitle: true,
            title: Text(
              "Yonqed SDN. BHD.",
              style: CoinTextStyle.title2Bold,
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(Assets.earphone),
                ),
              ),
            ),
          ),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: ValueListenableBuilder<int>(
              valueListenable: currentPageIndex,
              builder: (context, state, widget) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          currentPageIndex.value = 0;
                          controller.animateToPage(0,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut);
                        },
                        child: Column(
                          children: [
                            Text("Details",
                                style: CoinTextStyle.title2.copyWith(
                                    color: state == 0
                                        ? CoinColors.orange
                                        : CoinColors.black54,
                                    fontWeight: FontWeight.w600)),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 12),
                              height: 2.0,
                              color: state == 0
                                  ? CoinColors.orange
                                  : CoinColors.transparent,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          currentPageIndex.value = 1;
                          controller.animateToPage(1,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut);
                        },
                        child: Column(
                          children: [
                            Text("Products",
                                style: CoinTextStyle.title2.copyWith(
                                    color: state == 1
                                        ? CoinColors.orange
                                        : CoinColors.black54,
                                    fontWeight: FontWeight.w600)),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 12),
                              height: 2.0,
                              color: state == 1
                                  ? CoinColors.orange
                                  : CoinColors.transparent,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Flexible(
            child: PageView(
              controller: controller,
              onPageChanged: (int page) {
                currentPageIndex.value = page;
              },
              children: [
                ProductDetails(),
                Products(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Yonqed SDN. BHD.",
            style: CoinTextStyle.title2Bold.copyWith(color: CoinColors.orange),
          ),
          Text(
            "yongqed@gmail.com",
            style: CoinTextStyle.title4,
          ),
          Text(
            "012 - 683 2269",
            style: CoinTextStyle.title4,
          ),
          Text(
            "2a, Jalan Klebang Jaya 3, 75200 Melaka.",
            style: CoinTextStyle.title4,
          ),
          const SizedBox(height: 8),
          const Divider(thickness: 2),
          Container(
            padding: const EdgeInsets.all(5),
            height: 120,
            width: double.infinity,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              children: [
                Text(
                  "Description",
                  style: CoinTextStyle.title3Bold
                      .copyWith(color: CoinColors.orange),
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit .Proin et orci in quam porta condimentum. Mauris non ligula tempus, lacinia velit a, aliquam metus. Nulla at sapien scelerisque, imperdiet ex non.",
                  textAlign: TextAlign.left,
                  style: CoinTextStyle.title5.copyWith(
                    fontSize: 10.5,
                  ),
                ),
              ],
            ),
          ),
          const Divider(thickness: 2),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
            height: 220,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Our Services",
                  style: CoinTextStyle.title3Bold
                      .copyWith(color: CoinColors.orange),
                ),
                Text(
                    "1. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                    style: CoinTextStyle.title5.copyWith(
                      letterSpacing: 0.5,
                    )),
                Text(
                    "2. Proin et orci in quam porta condimentum. Mauris non ligula tempus, lacinia velit a, aliquam metus.",
                    style: CoinTextStyle.title5.copyWith(
                      letterSpacing: 0.5,
                    )),
                Text(
                    "3. Nulla atone sapien scelerisque, imperdiet exq non, venenatis mi.",
                    style: CoinTextStyle.title5.copyWith(
                      letterSpacing: 0.5,
                    )),
                Text(
                    "4. Nullam arcu leo, blandit nec consequat vel, molestie et sem.",
                    style: CoinTextStyle.title5.copyWith(
                      letterSpacing: 0.5,
                    )),
                Text(
                    "5. Praesent pretium erat at nulla euismod, a rutrum elit blandit. Etiam nec aliquam metus.",
                    style: CoinTextStyle.title5.copyWith(
                      letterSpacing: 0.5,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Products extends StatelessWidget {
  Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GridView.builder(
        itemCount: productcard.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            // childAspectRatio: 0.5,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15),
        itemBuilder: (context, index) {
          return productcard[index];
        },
      ),
    );
  }
}

List<Widget> productcard = [
  ProductCard(imageURL: Assets.earphone),
  ProductCard(imageURL: Assets.earphone2),
  ProductCard(imageURL: Assets.earphone3),
  ProductCard(imageURL: Assets.earphone4),
];

class ProductCard extends StatelessWidget {
  final String imageURL;
  ProductCard({Key? key, required this.imageURL}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 50,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imageURL),
        ),
      ),
    );
  }
}
