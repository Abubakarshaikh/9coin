import 'package:flutter/material.dart';

class LuckDrawInformationPage extends StatelessWidget {
  static Route<LuckDrawInformationPage> route() {
    return MaterialPageRoute(
        builder: (context) => const LuckDrawInformationPage());
  }

  const LuckDrawInformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Luck Drwa Information"),
      ),
      body: const Center(
        child: Text("Luck Drwa Information"),
      ),
    );
  }
}
