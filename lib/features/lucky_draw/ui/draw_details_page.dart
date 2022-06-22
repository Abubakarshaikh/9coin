import 'package:flutter/material.dart';

class DrawDetailsPage extends StatelessWidget {
  static route() {
    return MaterialPageRoute(builder: (context) {
      return const DrawDetailsPage();
    });
  }

  const DrawDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Imperdiet Ex Non"),
      ),
    );
  }
}
