import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/category/electronic_page.dart';
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
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
                onTap: () {
                  Navigator.push(context, ElectronicPage.rout());
                },
                imageUrl: Assets.electronic,
                color: CoinColors.orange12,
                label: "Electronic",
              ),
            ],
          ),
          // const SizedBox(height: 12),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     CategoryCircularCard(
          //       onTap: () {},
          //       imageUrl: Assets.fashion,
          //       color: CoinColors.blue,
          //       label: "Fashion",
          //     ),
          //     CategoryCircularCard(
          //       onTap: () {},
          //       imageUrl: Assets.gaming,
          //       color: CoinColors.red,
          //       label: "Gaming",
          //     ),
          //     CategoryCircularCard(
          //       onTap: () {},
          //       imageUrl: Assets.groceries,
          //       color: CoinColors.yellow,
          //       label: "Groceries",
          //     ),
          //     CategoryCircularCard(
          //       onTap: () {},
          //       imageUrl: Assets.pet,
          //       color: CoinColors.indigo,
          //       label: "Pets",
          //     ),
          //   ],
          // ),
          // const SizedBox(height: 12),
          // Row(
          //   children: [
          //     CategoryCircularCard(
          //       onTap: () {},
          //       imageUrl: Assets.sports,
          //       color: CoinColors.blueAccent,
          //       label: "Sports",
          //     ),
          //     const SizedBox(width: 14),
          //     CategoryCircularCard(
          //       onTap: () {},
          //       imageUrl: Assets.voucher,
          //       color: CoinColors.teal,
          //       label: "Vouchers",
          //     ),
          //     const SizedBox(width: 14),
          //     CategoryCircularCard(
          //       onTap: () {},
          //       imageUrl: Assets.watch,
          //       color: CoinColors.purple,
          //       label: "Watches",
          //   ),
        ],
      ),
    );
  }
}
