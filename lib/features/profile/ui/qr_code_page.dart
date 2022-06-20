import 'package:flutter/material.dart';

class QrCodePage extends StatelessWidget {
  static Route<QrCodePage> route() {
    return MaterialPageRoute(builder: (context) => const QrCodePage());
  }

  const QrCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("QR Code"),
      ),
      body: const Center(
        child: Text("QR Code"),
      ),
    );
  }
}
