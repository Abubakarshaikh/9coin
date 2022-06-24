import 'package:flutter/material.dart';

class PointHistoryPage extends StatelessWidget {
  static route() {
    return MaterialPageRoute(builder: (_) => const PointHistoryPage());
  }

  const PointHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text("Point History Page"),
    ));
  }
}
