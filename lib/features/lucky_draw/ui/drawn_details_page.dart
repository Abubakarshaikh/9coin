import 'package:flutter/material.dart';

class DrawnDetailsPage extends StatelessWidget {
  static route() {
    return MaterialPageRoute(builder: (context) {
      return const DrawnDetailsPage();
    });
  }

  const DrawnDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Imperdiet Ex Non"),
      ),
    );
  }
}
