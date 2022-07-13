import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/home/components/my_bottom_navigation_bar.dart';
import 'package:ninecoin/typography/text_styles.dart';

class NewsDetailsPage extends StatelessWidget {
  static route() {
    return MaterialPageRoute(builder: (context) => const NewsDetailsPage());
  }

  const NewsDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CoinColors.fullBlack,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("News"),
          ),
          body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 16),
                constraints: const BoxConstraints.expand(
                  width: double.infinity,
                  height: 240,
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: Image.asset(Assets.chickenRice1,
                            fit: BoxFit.cover)),
                  ],
                ),
              ),
              Text("23 May 2022",
                  style:
                      CoinTextStyle.title4.copyWith(color: CoinColors.black54)),
              Text("Prices of chicken dishes may go up",
                  style: CoinTextStyle.orangeTitle2),
              const SizedBox(height: 6),
              Text(
                  '''PETALING JAYA: If left unresolved, the prolonged issue of chicken supply and costs may leave eateries with no choice but to increase the prices of dishes with chicken, say restaurants \n \nMalaysian Indian Restaurant Owners Association vice-president C. Krishnan said people often relied on chicken-based meals for their daily consumption as it was cheaper compared to other meats or eafood. ''',
                  style: CoinTextStyle.title3),
              const SizedBox(height: 24),
              Container(
                margin: const EdgeInsets.only(bottom: 12.0),
                constraints: const BoxConstraints.expand(
                    width: double.infinity, height: 240),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Expanded(
                            child: Image.asset(Assets.chickenRice2,
                                fit: BoxFit.cover)),
                        Text("https://www.youtube.com/watch?v=oDo4APfAKuw",
                            style: CoinTextStyle.orangeTitle4
                                .copyWith(height: 2.5)),
                      ],
                    )),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Text("Lorem Consectetur Adipiscing Elit",
                  style: CoinTextStyle.orangeTitle2),
              const SizedBox(height: 6),
              Text(
                  '''He said besides restaurants, the public might also be significantly affected if chicken supply and its cost continue to increase as it was always in high demand.\n \n “Almost 80% of the protein served in most restaurants are either egg or chicken and we may eat chicken four to five days a week. Sometimes, we can even eat chicken three times a day,” he said.\n \n Krishnan said he was now buying chicken for between RM9.80 and RM10.50 per kg despite a ceiling price of RM8.90 and had been facing issues getting supply for over a week, often needing to go to several hypermarkets for his daily requirements.''',
                  style: CoinTextStyle.title3),
              Container(
                margin: const EdgeInsets.only(bottom: 12, top: 12),
                constraints: const BoxConstraints.expand(
                    width: double.infinity, height: 240),
                child: Row(
                  children: [
                    Expanded(
                        child: Image.asset(Assets.chicken, fit: BoxFit.cover)),
                  ],
                ),
              ),
              Text(
                '''“I usually order 25 to 30 whole chickens but my regular supplier can only supply 10 birds a day now,” he said, adding that the shortage in supply and rising prices might affect the price of meals. “A plate of mee goreng or nasi goreng can either get more expensive or go without chicken meat,” he said, adding that the increasing costs of other essential items, such as vegetable and flour, would also impact food prices.''',
                style: CoinTextStyle.title3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
