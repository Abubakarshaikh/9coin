import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/typography/text_styles.dart';

class ElectronicPage extends StatefulWidget {
  static Route rout() {
    return MaterialPageRoute(builder: (context) => const ElectronicPage());
  }

  const ElectronicPage({Key? key}) : super(key: key);

  @override
  State<ElectronicPage> createState() => _ElectronicPageState();
}

class _ElectronicPageState extends State<ElectronicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Electronic",
          style: CoinTextStyle.title1,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 70,
              color: CoinColors.black26,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: const [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: CoinColors.black,
                          prefixIcon: Icon(
                            Icons.search,
                            color: CoinColors.black54,
                          ),
                          hintText: "Search",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            RoundedElectricCard(
              onTap: () {},
              imageUrl: Assets.television,
              title: "Sonyod SDN. BHD.",
              pNumber: "010 - 559 6689",
              location: "No. 12, Jalan Bukit Baru, 75150 Melaka.",
            ),
            RoundedElectricCard(
              onTap: () {},
              imageUrl: Assets.earphone,
              title: "Yonqed SDN. BHD.",
              pNumber: "012 - 683 2269",
              location: "2a, Jalan Klebang Jaya 3, 75200 Melaka.",
            ),
          ],
        ),
      ),
    );
  }
}

class RoundedElectricCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String pNumber;
  final String location;
  final Function() onTap;
  const RoundedElectricCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.pNumber,
    required this.location,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            // margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 22),

            height: 240,
            width: 400,
            // alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              color: CoinColors.black,
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  // flex: 4,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(6.0),
                            topRight: Radius.circular(6.0),
                          ),
                          child: Image.asset(
                            imageUrl,
                            fit: BoxFit.cover,
                            height: 140,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 7, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(title,
                            style: CoinTextStyle.title3.copyWith(
                                color: CoinColors.orange,
                                fontWeight: FontWeight.w600)),
                      ),
                      const SizedBox(height: 3),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(Icons.phone, size: 16.0),
                          ),
                          Text(pNumber, style: CoinTextStyle.title4),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(Icons.location_on_rounded, size: 16.0),
                          ),
                          Flexible(
                            child: Text(location, style: CoinTextStyle.title5),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
