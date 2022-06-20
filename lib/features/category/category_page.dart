import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/category/electronic_page.dart';
import 'package:ninecoin/features/home/components/category_circular_card.dart';
import 'package:ninecoin/typography/text_styles.dart';

class CategoryPage extends StatelessWidget {
  static Route rout() {
    return MaterialPageRoute(builder: (context) => CategoryPage());
  }

  CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextButton(
            onPressed: () {
              Navigator.push(context, ElectronicPage.rout());
            },
            child: const Text("Categories")),
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
    );
  }

  List<Widget> categories = [
    CategoryCircularCard(
      onTap: () {},
      imageUrl: Assets.beautyIcon,
      color: CoinColors.red12,
      label: "Beauty",
    ),
    CategoryCircularCard(
      onTap: () {},
      imageUrl: Assets.beautyIcon,
      color: CoinColors.red12,
      label: "Beauty",
    ),
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
