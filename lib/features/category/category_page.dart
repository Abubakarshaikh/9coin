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
            title: Text(
              "Categories",
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
        body: GridView.builder(
          itemCount: categories.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 0.9,
          ),
          itemBuilder: (context, index) {
            return categories[index];
          },
        ),
      ),
    );
  }

  List<Widget> categories = [
    CategoryCircularCard(
      onTap: () {},
      imageUrl: Assets.salon,
      color: CoinColors.green,
      label: "A'Salon",
    ),
    CategoryCircularCard(
      onTap: () {},
      imageUrl: Assets.bag,
      color: CoinColors.pink,
      label: "Bag",
    ),
    CategoryCircularCard(
      onTap: () {},
      imageUrl: Assets.beautyIcon,
      color: CoinColors.red12,
      label: "Beauty",
    ),
    CategoryCircularCard(
      onTap: () {},
      imageUrl: Assets.electronic,
      color: CoinColors.orange12,
      label: "Electronic",
    ),
    CategoryCircularCard(
      onTap: () {},
      imageUrl: Assets.fashion,
      color: CoinColors.blue,
      label: "Fashion",
    ),
    CategoryCircularCard(
      onTap: () {},
      imageUrl: Assets.gaming,
      color: CoinColors.red,
      label: "Gaming",
    ),
    CategoryCircularCard(
      onTap: () {},
      imageUrl: Assets.groceries,
      color: CoinColors.yellow,
      label: "Groceries",
    ),
    CategoryCircularCard(
      onTap: () {},
      imageUrl: Assets.pet,
      color: CoinColors.indigo,
      label: "Pets",
    ),
    CategoryCircularCard(
      onTap: () {},
      imageUrl: Assets.sports,
      color: CoinColors.blueAccent,
      label: "Sports",
    ),
    CategoryCircularCard(
      onTap: () {},
      imageUrl: Assets.voucher,
      color: CoinColors.teal,
      label: "Vouchers",
    ),
    CategoryCircularCard(
      onTap: () {},
      imageUrl: Assets.watch,
      color: CoinColors.purple,
      label: "Watches",
    ),
  ];
}
