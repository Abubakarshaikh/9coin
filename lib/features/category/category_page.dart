import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  static Route rout() {
    return MaterialPageRoute(builder: (context) => const CategoryPage());
  }

  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Category"),
      ),
    );
  }
}
