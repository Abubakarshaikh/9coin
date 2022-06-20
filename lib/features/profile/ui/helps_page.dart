import 'package:flutter/material.dart';

class HelpsPage extends StatelessWidget {
  static Route<HelpsPage> route() {
    return MaterialPageRoute(builder: (context) => const HelpsPage());
  }

  const HelpsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Helps"),
      ),
      body: const Center(
        child: Text("Helps Profile"),
      ),
    );
  }
}
