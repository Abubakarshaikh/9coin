import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/home/components/category_circular_card.dart';

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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Categories"),
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
  ];
}
