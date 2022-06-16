import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/home/components/category_circular_card.dart';

class CategoryPage extends StatelessWidget {
  static Route rout() {
    return MaterialPageRoute(builder: (context) => const CategoryPage());
  }

  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Categories")),
      body: Wrap(
        alignment: WrapAlignment.center,
        spacing: 32,
        runSpacing: 20,
        children: [
          CategoryCircularCard(
            onTap: () {},
            imageUrl: Assets.salon,
            color: CoinColors.green,
            label: "A'Salon",
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
            imageUrl: Assets.groceries,
            color: CoinColors.yellow,
            label: "Groceries",
          ),
          CategoryCircularCard(
            onTap: () {},
            imageUrl: Assets.sports,
            color: CoinColors.blueAccent,
            label: "Sports",
          ),
        ],
      ),
    );
  }
}
