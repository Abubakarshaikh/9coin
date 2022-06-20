import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/category/electronic_page.dart';
import 'package:ninecoin/features/home/components/category_circular_card.dart';
import 'package:ninecoin/typography/text_styles.dart';

class CategoryPage extends StatefulWidget {
  static Route rout() {
    return MaterialPageRoute(builder: (context) => const CategoryPage());
  }

  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(145),
          child: AppBar(
            centerTitle: true,
            title: TextButton(
              onPressed: () {
                Navigator.push(context, ElectronicPage.rout());
              },
              child: Text(
                "Categories",
                style: CoinTextStyle.title2Bold,
              ),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(Assets.categories),
                ),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 6),
          child: GridView.builder(
            itemCount: categories.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 0.7,
              mainAxisSpacing: 15,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return categories[index];
            },
          ),
        ),
      ),
    );
  }

  List<Widget> categories = [
    CategoriesCard(
      onTap: () {},
      imageUrl: Assets.salon,
      color: CoinColors.green,
      label: "A'Salon",
    ),
    CategoriesCard(
      onTap: () {},
      imageUrl: Assets.bag,
      color: CoinColors.pink,
      label: "Bag",
    ),
    CategoriesCard(
      onTap: () {},
      imageUrl: Assets.beautyIcon,
      color: CoinColors.red12,
      label: "Beauty",
    ),
    CategoriesCard(
      onTap: () {},
      imageUrl: Assets.electronic,
      color: CoinColors.orange12,
      label: "Electronic",
    ),
    CategoriesCard(
      onTap: () {},
      imageUrl: Assets.fashion,
      color: CoinColors.blue,
      label: "Fashion",
    ),
    CategoriesCard(
      onTap: () {},
      imageUrl: Assets.gaming,
      color: CoinColors.red,
      label: "Gaming",
    ),
    CategoriesCard(
      onTap: () {},
      imageUrl: Assets.groceries,
      color: CoinColors.yellow,
      label: "Groceries",
    ),
    CategoriesCard(
      onTap: () {},
      imageUrl: Assets.pet,
      color: CoinColors.indigo,
      label: "Pets",
    ),
    CategoriesCard(
      onTap: () {},
      imageUrl: Assets.sports,
      color: CoinColors.blueAccent,
      label: "Sports",
    ),
    CategoriesCard(
      onTap: () {},
      imageUrl: Assets.voucher,
      color: CoinColors.teal,
      label: "Vouchers",
    ),
    CategoriesCard(
      onTap: () {},
      imageUrl: Assets.watch,
      color: CoinColors.purple,
      label: "Watches",
    ),
  ];
}

class CategoriesCard extends StatelessWidget {
  final String imageUrl;
  final String label;
  final Color color;
  final Function() onTap;
  const CategoriesCard({
    Key? key,
    required this.imageUrl,
    required this.color,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(6.0),
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Image.asset(imageUrl, height: 35, width: 35),
          ),
          Text(label,
              style: CoinTextStyle.title3.copyWith(color: CoinColors.white)),
        ],
      ),
    );
  }
}
