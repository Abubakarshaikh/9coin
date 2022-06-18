import 'package:flutter/material.dart';

class PackagePaymentPage extends StatelessWidget {
  static route() {
    return MaterialPageRoute(builder: (_) => const PackagePaymentPage());
  }

  const PackagePaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Payment"),
      ),
    );
  }
}
